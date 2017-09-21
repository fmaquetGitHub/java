#!/bin/bash

#Run Main
java -classpath classes norsys.main.Main


#Run test
java -classpath lib/junit-4.12.jar:lib/hamcrest-core-1.3.jar:classes \
      org.junit.runner.JUnitCore common.math.CalculatriceTest
