package norsys.main;

import java.lang.NumberFormatException;


public class Main {

 public static void main(String[] arguments) {
  try {
   String s = "FOOBAR";
   int i = Integer.parseInt(s);

   // this line of code will never be reached
   System.out.println("int value = " + i);
  } catch (NumberFormatException nfe) {
   nfe.printStackTrace();
  }
 }

}
