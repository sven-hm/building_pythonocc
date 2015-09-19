# building_pythonocc
bunch of scripts to get along with the great _pythonocc sources_
(tested on a linux64 system)

### 1. Settings
In `build_scripts/installation_settings.sh` set your working directory and paths to swig3.
In my case building pythonocc with swig2 failed!
If path structure as described in `installation_settings.sh` is used, the scripts in build-scripts should work.

### 2. get OCE
Clone from tpaviot's github repository: `https://github.com/tpaviot/oce.git`.
And `git checkout tags/OCE-0.16.1`. See `build_scripts/get_sources_oce.sh`.

### 3. get SMESH
Clone from `https://github.com/sven-hm/smesh.git`, which is a fork of tpaviot's smesh repository.
And `git checkout sven-hm/testing_netgen_plugin`, which is on top of `review/netgen-5.3.1` with some minor changes for testing (work in progress).
See `build_scripts/get_sources_smesh.sh`.

### 4. get pythonocc
Clone from `https://github.com/sven-hm/pythonocc.git`, which is again a fork of tpaviot's pythonocc repo with some minor changes based on the dead branch `review/smesh`. I used a slightly modified version of pythonocc-generator to update the swig-files. See `build_scripts/get_sources_pythonocc.sh`.

### 5. pythonocc-generator
Instead of 4. you can use the pythonocc-generator to generate swig-files from the OCE and SMESH installations.
In `pythonocc-generator/src/wrapper_generator.conf` set (variables as in `installation_settings.sh`):
```
[OCE]
base_dir: ${OCE_INSTALL_DIR}
[SMESH]
base_dir: ${SMESH_INSTALL_DIR}
[pythonocc-core]
# the version
version: 0.16.2
# path where the SWIG files are generated
generated_swig_files: ${PYTHONOCC_SOURCES_DIR}/src/SWIG_files/wrapper
# __init__.py file location
init_path: ${PYTHONOCC_SOURCES_DIR}/cmake
[build]
```
Use tpaviot's `https://github.com/tpaviot/pythonocc-generator.git` to update the swig files, or if you are having trouble with the include order in the swig files, see the bug fix in my fork `https://github.com/sven-hm/pythonocc-generator.git`.
 
### 6. build OCE
Run `build_scripts/build_oce.sh`.

### 7. build SMESH
Run `build_scripts/build_smesh.sh`.

### 8. build pythonocc
Run `build_scripts/build_pythonocc.sh`.

### 9. test
Go to `${PYTHONOCC_SOURCES_DIR}/test`, `export PYTHONPATH=${PYTHONOCC_INSTALL_DIR}` and run `python core_smesh_unittest.py` (or `run_tests.py` for all the other unit tests).

### 10. examples
Go to `${PYTHONOCC_SOURCES_DIR}/example`, `export PYTHONPATH=${PYTHONOCC_INSTALL_DIR}` and run `python core_smesh_netgen*`.

