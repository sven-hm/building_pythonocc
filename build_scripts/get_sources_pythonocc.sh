#!/bin/bash

source installation_settings.sh

#git clone https://github.com/tpaviot/pythonocc-core.git ${PYTHONOCC_SOURCES_DIR}
git clone https://github.com/sven-hm/pythonocc-core.git ${PYTHONOCC_SOURCES_DIR}

cd ${PYTHONOCC_SOURCES_DIR}
##git checkout review/smesh-6.5.3.1-support
git checkout sven-hm/test_smesh_with_netgen
