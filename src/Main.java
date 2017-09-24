package main;

import java.lang.reflect.*;


public class Main {


 public static void main(String[] arguments) {
	
 try {
   String s = (String) Class.forName("java.lang.String").newInstance();
   Field field = String.class.getDeclaredField("serialVersionUID");
   field.setAccessible(true);
   System.out.println(field.get(s));

  } catch (Exception e) {
   System.out.println("NO suck ");
   e.printStackTrace();
  }


 }

}
