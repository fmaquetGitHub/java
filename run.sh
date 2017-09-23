#!/bin/bash

#Run Main
echo "CalculatriceTest"
java --module-path lib:modules								\
	--add-modules org.common.test 							\
	-m junit/org.junit.runner.JUnitCore common.math.test.CalculatriceTest

echo "InternalTest"
java --module-path lib:modules								\
	--add-modules org.common.test 							\
	--add-exports org.common/internal.math=org.common.test                  \
	-m junit/org.junit.runner.JUnitCore internal.math.test.InternalTest

