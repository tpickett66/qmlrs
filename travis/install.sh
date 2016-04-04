#!/usr/bin/env bash

if [[ "$TRAVIS_OS_NAME" == "osx"  ]]; then
    brew install cmake qt5
else
    sudo apt-get update -qq
    # requirements of qmlrs
    sudo apt-get install -qq qtbase5-dev libqt5gui5 libqt5quick5 libqt5qml5 qtdeclarative5-dev qtdeclarative5-qtquick2-plugin cmake
    # requirements of travis-cargo
    sudo apt-get install -qq libcurl4-openssl-dev libelf-dev libdw-dev binutils-dev
fi
