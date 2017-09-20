#!/bin/bash

# java.lang.reflect.InaccessibleObjectException: 
# Unable to make private double common.math.Calculatrice.carre(double) accessible:
# module org.common does not "opens common.math" to module com.norsys
java --module-path modules -m com.norsys/norsys.main.Main

echo "---------------------------"

# Ici , on ouvre quand même la deep reflection de common.math vers le module 
# com.norsys sans tenir compte de la déclaration du module org.common
java --add-opens org.common/common.math=com.norsys        \
     --module-path modules -m com.norsys/norsys.main.Main 
     
