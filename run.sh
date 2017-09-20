#!/bin/bash

# java.lang.NumberFormatException: For input string: "FOOBAR"
java --module-path modules -m com.norsys/norsys.main.Main

echo "---------------------------"

# java.lang.NumberFormatException: Gros Naze !
# On surcharge NumberFormatException
# com.norsys sans tenir compte de la déclaration du module org.common
java --patch-module java.base=modules/java.base \
     --module-path modules -m com.norsys/norsys.main.Main 
   
