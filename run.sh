#!/bin/bash

#Run Main
echo "CalculatriceTest"
java 	--module-path lib:modules/main/org.common     \
	--add-modules org.common      \
	--add-reads org.common=junit  \
	--add-exports org.common/common.math=junit  \
	--patch-module org.common=modules/test \
	-m junit/org.junit.runner.JUnitCore common.math.CalculatriceTest


