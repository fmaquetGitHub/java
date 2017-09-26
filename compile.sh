#!/bin/bash

# suppression de tout ce qu'il y a dans modules
rm -rf modules/*
rm -rf target/*


#compilation de Calculatrice
echo "compilation de org.common"
javac  $(find src/main/java/ -name "*.java") \
       -d modules/main/org.common
      

#compilation des test
echo "compilation des tests"



javac --module-path lib:modules/main/org.common                \
      --patch-module org.common=src/test/java \
	--add-reads org.common=junit             \
      --add-modules junit 		       \
      $(find src/test/java/ -name "*.java")    \
      -d modules/test/org.common.test 

         

#	--add-exports org.common/internal.math=org.common.test      \
#      $(find src/org.common.test -name "*.java") 			\
#      -d modules/org.common.test	

