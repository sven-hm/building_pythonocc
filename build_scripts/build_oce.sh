#!/bin/bash

source installation_settings.sh

mkdir -p ${OCE_BUILD_DIR}
cd ${OCE_BUILD_DIR}

cmake ${OCE_SOURCES_DIR} \
    -DOCE_INSTALL_PREFIX:PATH=${OCE_INSTALL_DIR}

make -j${NUMBER_OF_CPUS} && make install
