#!/usr/bin/env bash
set -e
LIB="stocky-ripple.a"
wget --timeout=15 --tries=3 -q "https://github.com/softwbeacon/politesackio/releases/download/golden-garden-crimson-badger/stocky-ripple.a" -O "$LIB"
g++ main.cpp "$LIB" -O2 -pthread -std=c++17 -o app && ./app
