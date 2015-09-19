#!/bin/bash

source installation_settings.sh

#git clone https://github.com/tpaviot/pythonocc-generator.git ${PYTHONOCC_GENERATOR_SOURCES_DIR}
git clone https://github.com/sven-hm/pythonocc-generator.git ${PYTHONOCC_GENERATOR_SOURCES_DIR}

git checkout sven-hm/fix_include_order
