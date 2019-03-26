package proxy.jdk.example.one;

/**
 * @author zlb
 * @description:
 * @date 2019/1/15 19:43
 */
public class TestProxy
{
    public static void main(String args[])
    {
        ProxyHandler proxy = new ProxyHandler();
        //绑定该类实现的所有接口
        Subject sub = (Subject) proxy.bind(new RealSubject());
        sub.doSomething();
        sub.doSomethingToo();
    }
}
