#!/bin/bash

# suppression de tout ce qu'il y a dans modules
rm -rf modules/org.common
rm -rf modules/com.norsys

# Compilation de tous les modules
javac --module-source-path src $(find src -name "*.java") -d modules
