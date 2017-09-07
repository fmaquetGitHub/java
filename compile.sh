#!/bin/bash

# suppression de tout ce qu'il y a dans classes
rm -rf classes/*/

# compilation de Calculatrice.java
javac src/common/math/Calculatrice.java -d classes

# Creation du jar
rm -rf lib/*.jar
jar -cf lib/calculatrice.jar -C classes common

# suppression de tout ce qu'il y a dans classes
rm -rf classes/*/

# Compilation de Main.java
javac -classpath lib/calculatrice.jar src/norsys/main/Main.java -d classes
