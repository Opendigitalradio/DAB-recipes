# DAB-recipes
DAB recipes to install [Opendigitalradio](https://github.com/Opendigitalradio) and related tools with PyBOMBS

The ODR-Dab suite was awkward to install by hand and PyBOMBS seemed to be doing most of the SDR related buildchain work.

Also PyBOMBS provides/compiles UHD and rtl-sdr which is most convient, as UHD provides TX and rtl-sdr RX.

This repo provides a less involved way of building some of the following applications:

- [odr-dabmux](https://github.com/Opendigitalradio/ODR-DabMux)
- [odr-dabmod](https://github.com/Opendigitalradio/ODR-DabMod)
- [etisnoop](https://github.com/Opendigitalradio/etisnoop)
- [dabtools](https://github.com/linuxstb/dabtools)
- [dablin](https://github.com/Opendigitalradio/dablin)
- [fdk-aac-dabplus](https://github.com/Opendigitalradio/fdk-aac-dabplus)
- [ka9q-fec](https://github.com/Opendigitalradio/ka9q-fec)

Follow [INSTALL.md](INSTALL.md) for installation guide.

For ongoing usage:

    cd /path/to/prefix
    . ./setup_env.sh
    # Invoke the programs as you need.
    
    
    ########## Example ##########
    etisnoop -h
    dab2eti -h
    eti2mpa
    odr-dabmux -h
    odr-dabmod
    dabplus-enc
    dablin
    ########## Example ##########

# Questions
- [ ] Does ODR project want the decode/demod repos added?
- [ ] Does ODR project want the data repos added?
- [ ] Make a dab-default for these recipes. How?

# Todo
- [x] Dependencies are not properly mapped
- [x] Dependencies are already fulfilled by gnuradio-default, not mapped
- [x] Usage instructions
- [ ] Test these builds
