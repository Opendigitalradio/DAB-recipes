Install [PyBOMBS (Python Build Overlay Managed Bundle System)](https://github.com/gnuradio/pybombs)  

Following the quickstart section with the addition of the DAB recipes.

    pybombs recipes add dab-recipes git+https://github.com/DavidLutton/DAB-recipes.git

    pybombs prefix init /path/to/prefix -a myprefix -R gnuradio-default
    pybombs install odr-dabmux odr-dabmod etisnoop dabtools dablin fdk-aac-dabplus

    cd /path/to/prefix
    . ./setup_env.sh

    # Check that the programs execute
    dab2eti -h
    eti2mpa
    odr-dabmux -h
    odr-dabmod
    dabplus-enc

# Tools that sucessfully compile
- odr-dabmux
- odr-dabmod
- etisnoop
- dabtools
- dablin
- fdk-aac-dabplus
