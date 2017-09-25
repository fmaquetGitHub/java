#!/bin/bash

echo "Run sans add-modules"
java -classpath classes main.JAXBExample

echo ""
echo "Run avec add-modules"
java --add-modules java.xml.bind -classpath classes main.JAXBExample
