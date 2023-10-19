/*
 * hsv.cpp
 *
 * Author: Lain Musgrove (lain.musgrove@hearst.com)
 * Date: Wednesday October 18, 2023
 */

#include "moonlight/color.h"
#include "moonlight/cli.h"
#include "moonlight/file.h"
#include <string>
#include <functional>

namespace cli = moonlight::cli;
namespace color = moonlight::color;

static std::optional<std::ifstream> s_input_file = {};
static std::optional<std::ofstream> s_output_file = {};


void adjust_colors(const std::string& prefix,
                   const std::string& suffix,
                   std::istream& infile, std::ostream& outfile,
                   std::function<color::fHSV(color::fHSV)> adj_f) {
    std::string line;
    std::regex pattern(prefix + "[0-9a-fA-F]{6}" + suffix);
    std::sregex_iterator end;

    while (std::getline(infile, line)) {
        size_t last_position = 0;

        for (auto iter = std::sregex_iterator(line.begin(), line.end(), pattern);
             iter != end;
             iter++) {
            outfile << line.substr(last_position, iter->position() - last_position);
            std::string input_str = iter->str();
            input_str = input_str.substr(prefix.length());
            input_str = input_str.substr(0, input_str.length() - suffix.length());
            auto input_rgb = color::uRGB::of(input_str);
            auto input_hsv = (color::fHSV) input_rgb;
            auto output_hsv = adj_f(input_hsv);
            auto output_rgb = (color::uRGB) output_hsv;
            outfile << prefix;
            outfile << std::hex << std::setw(6) << std::setfill('0') << (unsigned int) output_rgb;
            outfile << suffix;
            last_position = iter->position() + iter->length();
        }

        outfile << line.substr(last_position) << std::endl;
    }

}

std::istream* get_input_stream(const cli::CommandLine& cmd) {
    auto input_file = cmd.get("i", "input");
    if (input_file.has_value()) {
        s_input_file = moonlight::file::open_r(input_file.value());
        return &s_input_file.value();
    }

    return &std::cin;
}

std::ostream* get_output_stream(const cli::CommandLine& cmd) {
    auto output_file = cmd.get("o", "output");

    if (output_file.has_value()) {
        s_output_file = moonlight::file::open_w(output_file.value());
        return &s_output_file.value();
    }

    return &std::cout;
}

std::function<color::fHSV(const color::fHSV&)>
make_adj_closure(const cli::CommandLine& cmd) {
    auto hue_adj = cmd.get("H", "hue");
    auto saturation_adj = cmd.get("S", "saturation");
    auto value_adj = cmd.get("V", "value");

    return [=](const color::fHSV& color_in) {
        auto color = color_in;
        if (hue_adj.has_value()) {
            float hue_angle = std::stof(hue_adj.value());
            color = {color.h + hue_angle, color.s, color.v};
        }

        if (saturation_adj.has_value()) {
            float saturation_val = std::stof(saturation_adj.value());
            color = {color.h, color.s + saturation_val, color.v};
        }

        if (value_adj.has_value()) {
            float value_val = std::stof(value_adj.value());
            color = {color.h, color.s, color.v + value_val};
        }

        return color;
    };
}


int main(int argc, char** argv) {
    auto cmd = cli::parse(
        argc, argv, {}, {
            "i", "input",
            "o", "output",
            "H", "hue",
            "S", "saturation",
            "V", "value",
            "p", "prefix",
            "s", "suffix"
        });

    auto p_infile = get_input_stream(cmd);
    auto p_outfile = get_output_stream(cmd);
    auto adj_f = make_adj_closure(cmd);

    adjust_colors(
        cmd.get("p", "prefix").value_or("#"),
        cmd.get("s", "suffix").value_or(""),
        *p_infile, *p_outfile, adj_f);

    if (s_output_file.has_value()) {
        s_output_file->close();
    }

    if (s_input_file.has_value()) {
        s_input_file->close();
    }

    return 0;
}
