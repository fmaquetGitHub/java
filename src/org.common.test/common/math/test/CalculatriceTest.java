package common.math.test;

import org.junit.Test;
import static org.junit.Assert.assertEquals;
import common.math.Calculatrice;
public class CalculatriceTest {

    @Test
    public void test() {
        Calculatrice calculatrice = new Calculatrice();
        assertEquals(calculatrice.somme(1,1), 2);
    }

}

