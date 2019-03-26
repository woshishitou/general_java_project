package proxy.jdk.example.one;

/**
 * @author zlb
 * @description:
 * @date 2019/1/15 19:43
 */
public class RealSubject implements Subject
{
    public void doSomething()
    {
        System.out.println( "call doSomething()" );
    }

    public void doSomethingToo()
    {
        System.out.println( "call doSomethingToo()" );
    }
}
