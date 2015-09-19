#!/bin/bash

source installation_settings.sh

#git clone https://github.com/tpaviot/smesh.git ${SMESH_SOURCES_DIR}
git clone https://github.com/sven-hm/smesh.git ${SMESH_SOURCES_DIR}

cd ${SMESH_SOURCES_DIR}
##git checkout tags/6.5.3.1
#git checkout review/netgen-5.3.1
git checkout sven-hm/testing_netgen_plugin
