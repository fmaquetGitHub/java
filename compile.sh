#!/bin/bash

rm -rf classes/*

# Compilation sans modules
echo "compilation sans add-modules"
javac src/main/*.java -d classes

echo ""
echo "compilation avec add-modules"
javac --add-modules java.xml.bind  src/main/*.java -d classes

