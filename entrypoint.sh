#!/bin/bash

export NETWORK="--testnet"
# ENV ELECTRUM_USER electrum
# ENV ELECTRUM_HOME /home/$ELECTRUM_USER
export ELECTRUM_USER=root
export ELECTRUM_HOME=/${ELECTRUM_USER}
export ELECTRUM_PASSWORD=passw0rd
export ZHSM=${ZHSM}
#export ZHSM=keytest.pok.ibm.com
#export ZHSM=129.40.24.66
export PYTHONPATH=/git/electrum
export APP_ROOT=/var/www/html/electrum
export ELECTRUM_DAEMON_HOST=localhost

# start an electrum daemon
pushd /git/electrum
./entrypoint-electrum.sh
popd

# start a laravel frontend with apache2
./entrypoint-laravel.sh
