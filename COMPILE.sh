#!/bin/bash
rm FLTR.jar
rm -R bin/*
javac -cp .:jar/miglayout-4.0-swing.jar -encoding UTF-8 --release 8 -s src -d bin src/fltrpackage/*.java src/*.java
cp icons/icon128.png html/*.htm bin/fltrpackage
cd lib
cp -R * ../bin
cd ..
jar cfmv FLTR.jar jar/MANIFEST.MF -C bin .
chmod a+x FLTR.jar
echo OK, waiting...
read X
