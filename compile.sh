#!/bin/bash

# compilation de tous les modules

javac	--module-path lib \
	--module-source-path src $(find src -name "*.java") -d modules
