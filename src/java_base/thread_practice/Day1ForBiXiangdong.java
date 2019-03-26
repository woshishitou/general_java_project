package java_base.thread_practice;

import java.util.LinkedHashSet;

/**
 * @author zlb
 * @description:
 * @date 2018/11/7 15:44
 */
public class Day1ForBiXiangdong {

    /**
     * 零散知识点
     *
     * psvm： 自动打出main方法
     *
     */

    public static void main(String[] args) {

    }

}




class Demo extends Thread {

    public void run() {
        for(int x=0; x<60; x++) {
            System.out.println("demo run----"+x);
        }
    }

}


class ThreadDemo {
    public static void main(String[] args) {

        Demo d = new Demo();//创建好一个线程。

        // 运行start方法则另起线程
//        d.start();//开启线程并执行该线程的run方法。

        // 运行run方法仅仅是方法调用
        d.run();//仅仅是对象调用方法。而线程创建了，并没有运行。

        for(int x=0; x<60; x++)
            System.out.println("Hello World!--"+x);

    }
}









