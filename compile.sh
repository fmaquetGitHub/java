#!/bin/bash

# suppression de tout ce qu'il y a dans modules
rm -rf modules
mkdir modules


#!/bin/bash

# suppression de tout ce qu'il y a dans modules
rm -rf modules/org.common
rm -rf modules/com.norsys

# Compilation de NumberFormatException 
javac --patch-module java.base=src \
      -d modules/java.base  	     \
      src/java.base/java/lang/NumberFormatException.java 
      
# Compilation de Calculatrice.java
javac  	src/org.common/common/math/Calculatrice.java \
	src/org.common/module-info.java 	     \
	-d modules/org.common \
	
# Compilation de Main.java
javac  	--module-path modules \
          src/com.norsys/norsys/main/Main.java \
	src/com.norsys/module-info.java      \
	-d modules/com.norsys
      
      
  
