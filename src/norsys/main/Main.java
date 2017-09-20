package norsys.main;

import common.math.Calculatrice;

public class Main {

 public static void main(String[] args) {
  String helloWorld = new String("Hello World ! ");

  Calculatrice calculatrice = new Calculatrice();
  
  System.out.println(helloWorld + calculatrice.somme(1, 1));  
  System.out.println(helloWorld + calculatrice.soustraction(1, 1));
    
 }

}
