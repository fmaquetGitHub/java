#!/bin/bash

#Run Main
echo "CalculatriceTest"
java 	--module-path lib:modules								\
	--add-modules org.common 								\
	--add-reads org.common=junit  							\
	--add-exports org.common/common.math=junit						\
	--patch-module org.common=modules/
	-m junit/org.junit.runner.JUnitCore common.math.test.CalculatriceTest


