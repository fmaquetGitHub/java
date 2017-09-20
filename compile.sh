#!/bin/bash

# suppression de tout ce qu'il y a dans modules
rm -rf modules/org.common
rm -rf modules/com.norsys

# Compilation de tous les modules
javac --add-exports org.common/common.math=com.norsys                \
      --module-source-path src $(find src -name "*.java") -d modules
      
      
#      --add-exports <module>/<package>=<target-module>(,<target-module>)*
#                  met à jour <module> pour exporter <package> vers <target-module>,
#                  sans tenir compte de la déclaration de module.
#                  <target-module> peut être ALL-UNNAMED pour effectuer un export vers tous
#                  les modules sans nom.

