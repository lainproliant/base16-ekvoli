#!/usr/bin/env python
# --------------------------------------------------------------------
# build.py
#
# Author: Lain Musgrove (lain.musgrove@hearst.com)
# Date: Wednesday October 18, 2023
# --------------------------------------------------------------------
from xeno.build import build, recipe, task
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
    CC="g++",
    CFLAGS=["-I./include", "-I./deps/moonlight/include", "-std=c++2a"],
    LDFLAGS="-g",
)


# -------------------------------------------------------------------
@task(keep=True)
def deps():
    return [checkout(dep) for dep in DEPS]


# -------------------------------------------------------------------
@task(dep="deps", keep=True)
def hsv(deps):
    return [compile("src/hsv.cpp")]


# -------------------------------------------------------------------
@recipe(factory=True)
def make_base16_scheme(hsv, scheme, hue, sat, vol):
    return sh(
        "./src/hsv -p '' -i ./ekvoli.yaml -o {target} -H {hue} -S {sat} -V {vol}",
        target=f"./ekvoli-{scheme}.yaml",
        hsv=hsv,
        hue=hue,
        sat=sat,
        vol=vol,
    )


# -------------------------------------------------------------------
@recipe(factory=True)
def make_vim_scheme(hsv, scheme, hue, sat, vol):
    return sh(
        "./src/hsv -i ./colors/ekvoli.vim -o {target} -H {hue} -S {sat} -V {vol}",
        target=f"./colors/ekvoli-{scheme}.vim",
        hsv=hsv,
        hue=hue,
        sat=sat,
        vol=vol,
    )


# -------------------------------------------------------------------
@task
def base16_colorways(hsv):
    return [
        make_base16_scheme(hsv, scheme, hue, sat, vol)
        for [scheme, hue, sat, vol] in HSV_TRANSFORM_MATRIX
    ]


# -------------------------------------------------------------------
@task
def vim_colorways(hsv):
    return [
        make_vim_scheme(hsv, scheme, hue, sat, vol)
        for scheme, hue, sat, vol in HSV_TRANSFORM_MATRIX
    ]


# -------------------------------------------------------------------
@task
def base16_colorwheel(hsv):
    return [make_base16_scheme(hsv, f"hue-{n}", n, 0, 0) for n in range(0, 360)]


# -------------------------------------------------------------------
@task
def vim_colorwheel(hsv):
    return [make_vim_scheme(hsv, f"hue-{n}", n, 0, 0) for n in range(0, 360)]


# -------------------------------------------------------------------
@task(default=True)
def colorways(vim_colorways, base16_colorways):
    return [vim_colorways, base16_colorways]


# -------------------------------------------------------------------
@task
def colorwheel(vim_colorwheel, base16_colorwheel):
    return [vim_colorwheel, base16_colorwheel]


# -------------------------------------------------------------------
@task
def test():
    return sh("which g++ && readlink `which g++` && which `readlink `which g++``")


# -------------------------------------------------------------------
@task
def cc_json():
    """Generate compile_commands.json for IDEs."""
    return sh("intercept-build ./build.py compile:\\* -R; ./build.py -c compile:\\*")


# -------------------------------------------------------------------
build()
