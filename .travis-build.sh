#!/bin/bash
set -x #echo on

pybombs recipes add gr-recipes git+https://github.com/gnuradio/gr-recipes.git
pybombs recipes add gr-etcetera git+https://github.com/gnuradio/gr-etcetera.git
pybombs recipes add dab-recipes git+https://github.com/Opendigitalradio/DAB-recipes.git

pybombs prefix init /opt/dab/ -a dab
pybombs recipes list-repos
# pybombs recipes list

# odr-dabmod requires libboost =>1.55, trusty ships 1.54
# Execisively verbose install
pybombs -vv install rtl-sdr odr-padenc faad sdl2 libmpg123 dablin zeromq etisnoop ka9q-fec odr-audioenc odr-dabmux fdk-aac eti-tools dabtools
