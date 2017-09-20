package common.math;

public class Calculatrice {

   private static final double PI = 3.14;

   public double aireCercle(double r) {
      return PI * carre(r);
   }

   private double carre(double c) {
      return c * c;
   }

}
