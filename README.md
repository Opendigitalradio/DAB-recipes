# DAB-recipes
DAB recipes to install [Opendigitalradio](https://github.com/Opendigitalradio) and related tools with [PyBOMBS](https://github.com/gnuradio/pybombs) (Python Build Overlay Managed Bundle System)

The ODR suite was awkward to compile or rebuild by hand and PyBOMBS seemed to be capable of doing the required buildchain work.

In addition PyBOMBS compiles UHD for which is used by odr-dabmod and rtl-sdr by dabtools.

This repo provides a less manual way of compiling the following applications, so far:

- [odr-dabmux](https://github.com/Opendigitalradio/ODR-DabMux)
- [odr-dabmod](https://github.com/Opendigitalradio/ODR-DabMod)
- [odr-audioenc](https://github.com/Opendigitalradio/ODR-audioenc)
- [odr-padenc](https://github.com/Opendigitalradio/ODR-PadEnc)
- [etisnoop](https://github.com/Opendigitalradio/etisnoop)
- [dabtools](https://github.com/linuxstb/dabtools)
- [dablin](https://github.com/Opendigitalradio/dablin)
- [fdk-aac](https://github.com/Opendigitalradio/fdk-aac)
- [ka9q-fec](https://github.com/Opendigitalradio/ka9q-fec)
- [eti-tools](https://github.com/piratfm/eti-tools)

## Install
Install [Debian](https://www.debian.org/distrib/netinst) or [Ubuntu](http://www.ubuntu.com/download/server), then follow this section for installing [PyBOMBS](https://github.com/gnuradio/pybombs) (Python Build Overlay Managed Bundle System) and then DAB-recipes which will build [Opendigitalradio](https://github.com/Opendigitalradio) and related tools for you.

    apt-get install sudo python-pip
    pip install PyBOMBS

    pybombs recipes add gr-recipes git+https://github.com/gnuradio/gr-recipes.git
    pybombs recipes add gr-etcetera git+https://github.com/gnuradio/gr-etcetera.git
    pybombs recipes add dab-recipes git+https://github.com/Opendigitalradio/DAB-recipes.git
    pybombs prefix init /path/to/prefix -a dab

    # This will take some time, with UHD mostly and will also install system packages like libboost, libmpg123
    # You can skip any recipes that you do not need.

    list="odr-dabmux odr-dabmod odr-audioenc odr-padenc etisnoop dabtools dablin fdk-aac ka9q-fec eti-tools"
    pybombs install $list

    # Copy udev SDR.rules and reload udev
    sudo cp -v /path/to/prefix/src/rtl-sdr/rtl-sdr.rules /etc/udev/rules.d/.
    sudo cp -v /path/to/prefix/src/uhd/host/utils/uhd-usrp.rules /etc/udev/rules.d/.
    sudo udevadm control --reload

    cd /path/to/prefix
    . setup_env.sh  # To use the tools that have been built

    # Invoke the programs as you need.

## Usage
For ongoing usage:

    cd /path/to/prefix
    . ./setup_env.sh  # To use the tools that have been built

    # Invoke the programs as you need.

    ########## Example ##########
    etisnoop -h
    odr-dabmux -h
    odr-dabmod
    odr-audioenc
    odr-padenc
    dab2eti -h
    eti2mpa
    dablin
    na2ni -h
    ni2http -h
    ts2na -h
    ########## Example ##########

## Rebuild
    # Refetch the repo from source location
    list="odr-dabmux odr-dabmod odr-audioenc odr-padenc etisnoop dabtools dablin fdk-aac ka9q-fec eti-tools"
    pybombs refetch $list
    # You can edit source locally and then rebuild when developing
    pybombs rebuild $list

Source are stored in: /path/to/prefix/src/REPO/  
Recipes are stored in: ~/.pybombs/recipes/dab-recipes/

## New recipes development
You can select a git branch to get recipes from.

    pybombs recipes add libdab git+https://github.com/Opendigitalradio/DAB-recipes.git@libdab
