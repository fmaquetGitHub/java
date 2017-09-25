package main;

import java.io.File;
import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBException;
import javax.xml.bind.Marshaller;

import main.Customer;

public class JAXBExample {
	public static void main(String[] args) {

	  Customer customer = new Customer();
	  customer.setId(100);
	  customer.setName("Fred");
	  customer.setAge(36);

	  try {

		File file = new File("/home/frederic/boulot/java/src/test.xml");
		JAXBContext jaxbContext = JAXBContext.newInstance(Customer.class);
		Marshaller jaxbMarshaller = jaxbContext.createMarshaller();

		// output pretty printed
		jaxbMarshaller.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, true);

		jaxbMarshaller.marshal(customer, file);
		jaxbMarshaller.marshal(customer, System.out);

	      } catch (JAXBException e) {
		e.printStackTrace();
	      }

	}
}
