#!/bin/bash

# working directory
WORKING_DIR=/home/sven/pythonocc_build

# number of cpu, used by make
NUMBER_OF_CPUS=2

# --- setting directories ---

#
# base dirs
SOURCES_DIR=${WORKING_DIR}/sources
BUILD_DIR=${WORKING_DIR}/build
INSTALL_DIR=${WORKING_DIR}/install

#
# OCE dirs
OCE_SOURCES_DIR=${SOURCES_DIR}/oce
OCE_BUILD_DIR=${BUILD_DIR}/oce
OCE_INSTALL_DIR=${INSTALL_DIR}/oce

#
# SMESH dirs
SMESH_SOURCES_DIR=${SOURCES_DIR}/smesh
SMESH_BUILD_DIR=${BUILD_DIR}/smesh
SMESH_INSTALL_DIR=${INSTALL_DIR}/smesh

#
# PYTHONOCC dirs
PYTHONOCC_SOURCES_DIR=${SOURCES_DIR}/pythonocc
PYTHONOCC_BUILD_DIR=${BUILD_DIR}/pythonocc
PYTHONOCC_INSTALL_DIR=${INSTALL_DIR}/pythonocc
PYTHONOCC_LOG_DIR=${LOG_DIR}/pythonocc

#
# PYTHONOCC_GENERATOR dirs
PYTHONOCC_GENERATOR_SOURCES_DIR=${SOURCES_DIR}/pythonocc-generator

#
# SWIG
SWIG_EXECUTABLE=/usr/bin/swig3.0
SWIG_SHARE=/usr/share/swig3.0
SWIG_VERSION=3.0.2

