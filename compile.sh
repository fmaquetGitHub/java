#!/bin/bash

# suppression de tout ce qu'il y a dans modules
rm -rf modules/*



#compilation de Calculatrice
echo "compilation de org.common"
javac	 $(find src/org.common -name "*.java") \
      -d modules/org.common	
      

#compilation des test
echo "compilation des tests"

#J'exporte org.common/internal.math pour org.common.test
javac --module-path lib:modules						\
	--add-exports org.common/internal.math=org.common.test      \
      $(find src/org.common.test -name "*.java") 			\
      -d modules/org.common.test	

