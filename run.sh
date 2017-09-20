#!/bin/bash

# Exception in thread "main" java.lang.IllegalAccessError: 
# class norsys.main.Main (in module com.norsys) cannot access class common.math.Calculatrice 
# (in module org.common) because module org.common does not export common.math to module com.norsys
java --module-path modules -m com.norsys/norsys.main.Main

echo "---------------------------"

# Ici , on ouvre quand même l'exports common.math vers le module 
# com.norsys sans tenir compte de la déclaration du module org.common
java --add-exports org.common/common.math=com.norsys        \
     --module-path modules -m com.norsys/norsys.main.Main 
     
