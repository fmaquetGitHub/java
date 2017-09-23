package internal.math.test;

import org.junit.Test;
import static org.junit.Assert.assertEquals;
import internal.math.Internal;

public class InternalTest {

    @Test
    public void test() {
        Internal internal = new Internal();
        assertEquals(internal.soustraction(2,1), 1);
    }

}

