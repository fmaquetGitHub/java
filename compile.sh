#!/bin/bash

# suppression de tout ce qu'il y a dans modules
rm -rf modules/org.common
rm -rf modules/com.norsys


#compilation de Calculatrice
javac src/org.common/module-info.java \
      src/org.common/main/common/math/Calculatrice.java \
      -d modules/org.common	
      
      
javac --module-path modules src/com.norsys/module-info.java \
      		        src/com.norsys/norsys/main/Main.java \
      -d modules/com.norsys
      

#javac --module-source-path src $(find src -name "*.java") -d modules

