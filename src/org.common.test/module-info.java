module org.common.test{
 requires org.common;
 requires junit;
 exports common.math.test to junit;
 exports internal.math.test to junit;
}

