#!/bin/bash

# suppression de tout ce qu'il y a dans modules
rm -rf modules/org.common*
rm -rf modules/com.norsys


#compilation de Calculatrice
echo "compilation de org.common"
javac	src/org.common/module-info.java \
      src/org.common/common/math/Calculatrice.java \
      -d modules/org.common	
      

#compilation des test
echo "compilation des tests"

javac --module-path lib:modules						\
	src/org.common.test/module-info.java 				\
      src/org.common.test/common/math/test/CalculatriceTest.java 	\
      -d modules/org.common.test	
      
#javac --module-path modules src/com.norsys/module-info.java \
#      		        src/com.norsys/norsys/main/Main.java \
#      -d modules/com.norsys
      

#javac --module-source-path src $(find src -name "*.java") -d modules

