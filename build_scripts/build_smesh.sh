#!/bin/bash

source installation_settings.sh

mkdir -p ${SMESH_BUILD_DIR}
cd ${SMESH_BUILD_DIR}

cmake ${SMESH_SOURCES_DIR} \
    -DCMAKE_INSTALL_PREFIX:PATH=${SMESH_INSTALL_DIR} \
    -DBoost_INCLUDE_DIR:PATH=${SMESH_SOURCES_DIR}/boost-1.52.0 \
    -DOCE_DIR:PATH=${OCE_INSTALL_DIR}/lib/oce-0.16/ \
    -DMONOLITHIC_BUILD:BOOL=ON \
    -DNETGEN_PLUGIN:BOOL=ON \
    -DNETGEN_INTERNAL:BOOL=ON

make -j${NUMBER_OF_CPUS} && make install


