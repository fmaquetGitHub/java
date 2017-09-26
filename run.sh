#!/bin/bash

#Run Main
echo "CalculatriceTest"
java 	--module-path lib:target/main/artifact     \
	--add-modules org.common      \
	--add-reads org.common=junit  \
	--add-exports org.common/common.math=junit  \
	--patch-module org.common=target/test/exploded \
	-m junit/org.junit.runner.JUnitCore common.math.CalculatriceTest


