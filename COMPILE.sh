#!/bin/bash
echo "** Remove **"
rm FLTR.jar
rm -R bin
echo "** Compile **"
javac --release 8 -cp .:jar/miglayout-4.0-swing.jar -encoding UTF-8 -Xlint:deprecation -s src -d bin src/fltrpackage/*.java src/*.java
echo "** Copy icon, html **"
cp icons/icon128.png html/*.htm bin/fltrpackage
echo "** Unzip miglayout **"
unzip ./jar/miglayout-4.0-swing.jar -d ./bin
rm -R ./bin/META-INF
echo "** Build jar **"
jar cfmv FLTR.jar jar/MANIFEST.MF -C bin .
echo "** Make executable **"
chmod a+x FLTR.jar
echo OK, waiting...
read X
