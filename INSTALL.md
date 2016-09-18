Install [Debian](https://www.debian.org/distrib/netinst) or [Ubuntu](http://www.ubuntu.com/download/server), then this document will guide you through installing [PyBOMBS (Python Build Overlay Managed Bundle System)](https://github.com/gnuradio/pybombs) and then DAB-recipes.

    apt-get install sudo python-pip
    pip install PyBOMBS

    pybombs recipes add gr-recipes git+https://github.com/gnuradio/gr-recipes.git
    pybombs recipes add gr-etcetera git+https://github.com/gnuradio/gr-etcetera.git
    pybombs recipes add dab-recipes git+https://github.com/DavidLutton/DAB-recipes.git
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
