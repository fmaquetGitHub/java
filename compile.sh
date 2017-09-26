#!/bin/bash

# suppression de tout ce qu'il y a dans modules
rm -rf modules/*
rm -rf target/*


#compilation de Calculatrice
echo "compilation de org.common"
javac  $(find src/main/java/ -name "*.java") \
       -d target/main/artifact
      

#compilation des test
echo "compilation des tests"



javac -d target/test/exploded \
      --module-path lib:target/main/artifact                \
      --add-reads org.common=junit             \
      --add-modules junit 		       \
      --patch-module org.common=src/test/java \
      $(find src/test/java/ -name "*.java")    \




#	--add-exports org.common/internal.math=org.common.test      \
#      $(find src/org.common.test -name "*.java") 			\
#      -d modules/org.common.test	

