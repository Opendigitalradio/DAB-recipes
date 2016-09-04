
Install [PyBOMBS (Python Build Overlay Managed Bundle System)](https://github.com/gnuradio/pybombs)  

You can skip installing `-R gnuradio-default` if you only want the DAB tools which results in a minimal installation

    pybombs recipes add gr-recipes git+https://github.com/gnuradio/gr-recipes.git  
    pybombs recipes add gr-etcetera git+https://github.com/gnuradio/gr-etcetera.git
    pybombs recipes add dab-recipes git+https://github.com/DavidLutton/DAB-recipes.git

    pybombs prefix init /path/to/prefix -a myprefix  # -R gnuradio-default
    pybombs install odr-dabmux odr-dabmod etisnoop dabtools dablin fdk-aac-dabplus

    cd /path/to/prefix
    . ./setup_env.sh

    sudo cp -v src/rtl-sdr/rtl-sdr.rules /etc/udev/rules.d/.
    sudo cp -v src/uhd/host/utils/uhd-usrp.rules /etc/udev/rules.d/. 
    sudo udevadm control --reload

    # copy udev .rules and reload udev
    sudo cp -v /path/to/prefix/src/rtl-sdr/rtl-sdr.rules  /etc/udev/rules.d/.
    sudo cp -v /path/to/prefix/src/uhd/host/utils/uhd-usrp.rules  /etc/udev/rules.d/. 
    sudo udevadm control --reload

    # Check that the programs execute - if you want to
    etisnoop -h
    dab2eti -h
    eti2mpa
    odr-dabmux -h
    odr-dabmod
    dabplus-enc
    dablin

    # Test the programs function correctly
    ...
