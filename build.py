#!/usr/bin/env python3
# --------------------------------------------------------------------
# build.py
#
# Author: Lain Musgrove (lain.musgrove@hearst.com)
# Date: Wednesday October 18, 2023
# --------------------------------------------------------------------
from xeno.build import build, task
from xeno.recipes import checkout, sh
from xeno.recipes.cxx import ENV, compile

# -------------------------------------------------------------------
HSV_TRANSFORM_MATRIX = [
    ["alfa", 45, 0, 0],
    ["bravo", 90, 0, 0],
    ["charlie", 135, 0, 0],
    ["delta", 180, 0, 0],
    ["echo", 225, 0, 0],
    ["foxtrot", 270, 0, 0],
    ["golf", 315, 0, 0],
]

# -------------------------------------------------------------------
DEPS = [
    "https://github.com/lainproliant/moonlight",
]

ENV.update(
    append="CFLAGS,LDFLAGS",
    CFLAGS=["-I./include", "-I./deps/moonlight/include"],
    LDFLAGS="-g",
)


# -------------------------------------------------------------------
@task
def deps():
    return [checkout(dep) for dep in DEPS]


# -------------------------------------------------------------------
@task(dep="deps")
def hsv(deps):
    return [compile("src/hsv.cpp")]


# -------------------------------------------------------------------
@task(dep="hsv")
def base16_colorways(hsv):
    return [
        sh(
            "./src/hsv -p '' -i ./ekvoli.yaml -o {target} -H {hue} -S {sat} -V {vol}",
            target=f"./ekvoli-{scheme}.yaml",
            hue=hue,
            sat=sat,
            vol=vol,
        )
        for [scheme, hue, sat, vol] in HSV_TRANSFORM_MATRIX
    ]


# -------------------------------------------------------------------
@task(dep="hsv")
def vim_colorways(hsv):
    return [
        sh(
            "./src/hsv -i ./vim/colors/ekvoli.vim -o {target} -H {hue} -S {sat} -V {vol}",
            target=f"./vim/colors/ekvoli-{scheme}.vim",
            hue=hue,
            sat=sat,
            vol=vol,
        )
        for scheme, hue, sat, vol in HSV_TRANSFORM_MATRIX
    ]


# -------------------------------------------------------------------
@task(default=True)
def colorways(vim_colorways, base16_colorways):
    return [vim_colorways, base16_colorways]


# -------------------------------------------------------------------
@task
def cc_json():
    """Generate compile_commands.json for IDEs."""
    return sh("intercept-build ./build.py compile:\\* -R; ./build.py -c compile:\\*")


# -------------------------------------------------------------------
build()
