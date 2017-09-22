#!/bin/bash

#Run Main
java --module-path lib:modules								\
	--add-modules org.common.test 							\
	-m junit/org.junit.runner.JUnitCore common.math.test.CalculatriceTest

