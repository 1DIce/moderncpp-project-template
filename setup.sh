
#!/usr/bin/env bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

cd "$SCRIPT_DIR"

rm -rf ./scripts

mkdir -p ./scripts/conan

cd scripts/conan

wget 'https://github.com/conan-io/conan/releases/download/2.1.0/conan-2.1.0-linux-x86_64.tgz'

tar -xvf conan-2.1.0-linux-x86_64.tgz 
rm conan-2.1.0-linux-x86_64.tgz
