#!/bin/bash

# suppression de tout ce qu'il y a dans modules
rm -rf classes/org
rm -rf classes/com
rm -rf classes/test 

echo "Compilation des sources"
javac src/main/common/math/Calculatrice.java -d classes
javac -classpath classes src/main/norsys/main/Main.java -d classes


echo "compilation des tests"
javac -classpath classes:lib/junit-4.12.jar \
       src/test/common/math/CalculatriceTest.java -d classes

