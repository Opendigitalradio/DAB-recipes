echo -n "environment=`grep export setup_env.sh \
| sed 's/export //g' \
| sed 's/$PATH/%(PATH)s/g' \
| sed 's/$PYTHONPATH/%(PYTHONPATH)s/g' \
| sed 's/$LD_LIBRARY_PATH/%(LD_LIBRARY_PATH)s/g' \
| sed 's/$LIBRARY_PATH/%(LIBRARY_PATH)s/g' \
| sed 's/$PKG_CONFIG_PATH/%(PKG_CONFIG_PATH)s/g' \
| sed ':a;N;$!ba;s/\n/,/g'`"

