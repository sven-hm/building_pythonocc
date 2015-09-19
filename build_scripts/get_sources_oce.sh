#!/bin/bash

source installation_settings.sh

mkdir -p ${OCE_SOURCES_DIR}

git clone https://github.com/tpaviot/oce.git ${OCE_SOURCES_DIR}

cd ${OCE_SOURCES_DIR}
git checkout tags/OCE-0.16.1
