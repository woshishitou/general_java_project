package lock;

import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/**
 * @author zlb
 * @description:
 * 来源：
 * https://www.cnblogs.com/hongdada/p/6150699.html
 * @date 2019/3/7 14:47
 */
public class Main3 {
    static class NumberWrapper {
        public int value = 1;
    }

    public static void main(String[] args) throws Exception {
        //初始化可重入锁
        final Lock lock = new ReentrantLock();

        //第一个条件当屏幕上输出到3
        final Condition reachThreeCondition = lock.newCondition();
        Thread threadA = new Thread(new Runnable() {
            @Override
            public void run() {
                lock.lock();
                try {
                    System.out.println("A start");
                    reachThreeCondition.await();
                    Thread.sleep(5000);
                    System.out.println("A end");
                    reachThreeCondition.await();
                } catch (InterruptedException e) {
                    e.printStackTrace();
                } finally {
                    lock.unlock();
                }
            }
        });
        Thread threadB = new Thread(new Runnable() {
            @Override
            public void run() {
                lock.lock();
                try {
                    System.out.println("B start");
                    /*reachThreeCondition.await();
                    System.out.println("B end");
                    reachThreeCondition.await();*/
                } catch (Exception e) {
                    e.printStackTrace();
                } finally {
                   // lock.unlock();
                }
            }
        });
        Thread threadC = new Thread(new Runnable() {
            @Override
            public void run() {
                lock.lock();
                try {
                    System.out.println("C start");
                    reachThreeCondition.await();
                    System.out.println("C end");
                    reachThreeCondition.await();
                } catch (InterruptedException e) {
                    e.printStackTrace();
                } finally {
                    lock.unlock();
                }
            }
        });
        Thread threadD = new Thread(new Runnable() {
            @Override
            public void run() {
                lock.lock();
                try {
                    System.out.println("signal ");
                    reachThreeCondition.signalAll();
                } catch (Exception e) {
                    e.printStackTrace();
                } finally {
                    lock.unlock();
                }
            }
        });



        //启动两个线程
       /* threadA.start();
        Thread.sleep(10);*/
        threadB.start();
        Thread.sleep(10);
        threadC.start();
        Thread.sleep(10);
      //  threadD.start();
    }
}
