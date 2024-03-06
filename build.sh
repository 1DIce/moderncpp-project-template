#!/usr/bin/env bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

CONAN_BIN="$SCRIPT_DIR/scripts/conan/bin/conan"

cd "$SCRIPT_DIR"


mkdir -p build # md build (on Windows)
cd build

echo 'start conan install' 
"$CONAN_BIN" install .. --output-folder=. --build=missing
echo 'finished conan install' 
"$CONAN_BIN" install .. --output-folder=. --build=missing

echo 'start cmake build' 
cmake -DBUILD_TESTING=TRUE -DCMAKE_BUILD_TYPE=Release ..
cmake --build .
cmake --build . --target format
cmake --build . --target package/

