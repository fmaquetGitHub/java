#!/bin/bash

rm -rf classes/*

javac --add-modules java.xml.bind src/main/*.java -d classes

