package norsys.main;

import common.math.Calculatrice;
import java.lang.reflect.*;

public class Main {

 public static void main(String[] arguments) {
  try {
   
   Calculatrice calculatrice = new Calculatrice();
  
   // Tentative d'appel de la méthode privée carre
   Method method = calculatrice.getClass().getDeclaredMethod("carre", Double.TYPE);
   method.setAccessible(true);
   double carre = (double) method.invoke(calculatrice, 2.0);
   System.out.println("carre  = " + carre);

  } catch (NoSuchMethodException | IllegalAccessException | InvocationTargetException e) {
   System.out.println("l'utilisation de la methode carre a foirée ... triple andouille !");
   System.out.println(e);
  }

 }

}
