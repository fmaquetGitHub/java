#!/bin/bash
rm -rf classes/*/

javac src/common/math/Calculatrice.java -d classes
jar -cf lib/calculatrice.jar -C classes common

javac -classpath lib/calculatrice.jar src/norsys/main/Main.java -d classes
