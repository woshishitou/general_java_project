package java_base.base_type_package;

import org.junit.Test;

/**
 * @author zlb
 * @description:
 * @date 2019/1/19 11:29
 */
public class IntegerTest {

    @Test
    public void test1() {
        Integer i1 = 100;
        Integer i2 = 100;
        Integer i3 = 200;
        Integer i4 = 200;

        System.out.println(i1 == i2); // true
        System.out.println(i3 == i4); // false

        Integer i11 = new Integer(100);
        Integer i21 = new Integer(100);
        Integer i31 = new Integer(200);
        Integer i41 = new Integer(200);

        System.out.println(i11==i21); // false
        System.out.println(i31==i41); // false

        Integer a = 1;
        Integer b = 2;
        Long c = 3l;
        System.out.println(c.equals(a+b)); // false

        Integer a1 = 1;
        Long b1 = 2l;
        Long c1 = 3l;
        System.out.println(c.equals(a1+b1)); // true


    }


}
