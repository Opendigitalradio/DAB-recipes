# DAB-recipes
DAB recipes to install [Opendigitalradio](https://github.com/Opendigitalradio) and related tools with [PyBOMBS](https://github.com/gnuradio/pybombs) (Python Build Overlay Managed Bundle System)

The ODR suite was awkward to compile or rebuild by hand and PyBOMBS seemed to be capable of doing the required buildchain work.

In addition PyBOMBS compiles UHD for which is used by odr-dabmod and rtl-sdr by dabtools.

This repo provides a less manual way of compiling the following applications, so far:

- [odr-dabmux](https://github.com/Opendigitalradio/ODR-DabMux)
- [odr-dabmod](https://github.com/Opendigitalradio/ODR-DabMod)
- [etisnoop](https://github.com/Opendigitalradio/etisnoop)
- [dabtools](https://github.com/linuxstb/dabtools)
- [dablin](https://github.com/Opendigitalradio/dablin)
- [fdk-aac-dabplus](https://github.com/Opendigitalradio/fdk-aac-dabplus)
- [ka9q-fec](https://github.com/Opendigitalradio/ka9q-fec)
- [eti-tools](https://github.com/piratfm/eti-tools)

## Install
Follow [INSTALL.md](INSTALL.md) for installation guide.

## Usage
For ongoing usage:

    cd /path/to/prefix
    . ./setup_env.sh  # To use the tools that have been built

    # Invoke the programs as you need.

    ########## Example ##########
    etisnoop -h
    dab2eti -h
    eti2mpa
    odr-dabmux -h
    odr-dabmod
    dabplus-enc
    dablin
    na2ni -h
    ni2http -h
    ts2na -h
    ########## Example ##########

## Rebuild
Refetch the repo from source location

    pybombs refetch odr-dabmux odr-dabmod etisnoop dabtools dablin fdk-aac-dabplus eti-tools ka9q-fec
    pybombs rebuild odr-dabmux odr-dabmod etisnoop dabtools dablin fdk-aac-dabplus eti-tools ka9q-fec
Optionaly you could edit source locally and then rebuild  
Source is stored in: /path/to/prefix/src/REPO/

## New recipes development
You can select a git branch to get recipes from.

    pybombs recipes add libdab git+https://github.com/Opendigitalradio/DAB-recipes.git@libdab
