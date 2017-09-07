package norsys.main;

import common.math.Calculatrice;

public class Main {

 public static void main(String[] args) {
  String helloWorld = new String("Hello World ! ");

  //Calculatrice
  Calculatrice calculatrice = new Calculatrice();
  System.out.println(helloWorld + calculatrice.somme(1, 1));
  
  // classLoader de la calculatrice
  System.out.println("ClassLoader de calculatrice -> " + calculatrice.getClass().getClassLoader());
  // -> sun.misc.Launcher$AppClassLoader
  
  // ClassLoader du classLoader de la calculatrice
  System.out.println("ClassLoader du ClassLoader de calculatrice -> " + calculatrice.getClass().getClassLoader().getClass().getClassLoader());    
  // -> null
  
  System.out.println("ClassLoader de helloWorld -> " + helloWorld.getClass().getClassLoader());
  // -> null
  

  
 }

}
