# DAB-recipes
DAB recipes to install [Opendigitalradio](https://github.com/Opendigitalradio) and related tools with [PyBOMBS (Python Build Overlay Managed Bundle System)](https://github.com/gnuradio/pybombs)

The ODR-DAB suite was awkward to compile or rebuild by hand and PyBOMBS seemed to be capable of doing the required buildchain work.

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

Follow [INSTALL.md](INSTALL.md) for installation guide.

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


Rebuild is also simple:

    # Refetch the repo
    list="odr-dabmux odr-dabmod odr-audioenc odr-padenc etisnoop dabtools dablin fdk-aac ka9q-fec eti-tools"
    pybombs refetch $list
    # You can also edit source locally and then rebuild
    pybombs rebuild $list

Source are stored in: /path/to/prefix/src/REPO/
Recipes are stored in: ~/.pybombs/recipes/dab-recipes/
