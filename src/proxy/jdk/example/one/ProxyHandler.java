package proxy.jdk.example.one;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

/**
 * @author zlb
 * @description:
 * @date 2019/1/15 19:43
 */
public class ProxyHandler implements InvocationHandler
{
    private Object tar;

    /**
     * @Description: 我的理解：
     *              在调用 Proxy 类的 newInstance 方法时，java 底层就会返回一个代理类的实例对象
     *              产生该实例对象依赖的规则是下面 invoke 方法中的代码
     *              所以，在类 TestProxy 中，使用代理对象调用某个具体的方法时，调用的其实是已经被改造过的方法了
     * @author zlb
     * @date 2019/1/15 20:06
     */
    //绑定委托对象，并返回代理类
    public Object bind(Object tar)
    {
        this.tar = tar;
        //绑定该类实现的所有接口，取得代理类
        return Proxy.newProxyInstance(tar.getClass().getClassLoader(),
                tar.getClass().getInterfaces(),
                this);
    }

    /**
     * @Description: 我的理解：在调用代理类的方法时，java 底层会根据这个invoke方法去动态的生成对应的代理类
     * @author zlb
     * @date 2019/1/15 20:04 
     */
    public Object invoke(Object proxy , Method method , Object[] args)throws Throwable
    {
        Object result;
        //这里就可以进行所谓的AOP编程了
        //在调用具体函数方法前，执行功能处理
        System.out.println(method.getName() + "开始");
        result = method.invoke(tar,args);
        //在调用具体函数方法后，执行功能处理
        if (method.getName().endsWith("Too")) {
            System.out.println("这是too方法");
        }
        System.out.println(method.getName() + "结束");
        System.out.println();
        return result;
    }
}
