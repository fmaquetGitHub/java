package norsys.main;

import org.slf4j.Logger;          // slf4j
import org.slf4j.LoggerFactory;   // slf4j
import common.math.Calculatrice;

public class Main {

 private static final Logger logger = LoggerFactory.getLogger(Main.class);

 public static void main(String args[]) {

  // slf4j
  logger.info("Hello World example of SLF4J");

  String helloWorld = new String("Hello World ! ");
  Calculatrice calculatrice = new Calculatrice();
  System.out.println(helloWorld + calculatrice.somme(1, 1));

 }

}


