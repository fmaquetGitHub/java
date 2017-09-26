package common.math;

import org.junit.Test;
import static org.junit.Assert.assertEquals;


public class CalculatriceTest {

    @Test
    public void test() {
        Calculatrice calculatrice = new Calculatrice();
        assertEquals(calculatrice.somme(1,1), 2);
    }

}

