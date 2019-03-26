package lock;

import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/**
 * @author zlb
 * @description:
 * 对比以下链接的内容来看：
 * https://blog.csdn.net/IsResultXaL/article/details/53334750
 * @date 2019/3/7 14:47
 */
public class Main4 {
    static class NumberWrapper {
        public int value = 1;
    }

    public static void main(String[] args) throws Exception {
        //初始化可重入锁
        final Lock lock = new ReentrantLock(true); // 默认非公平锁，加true之后，变为公平锁

        //第一个条件当屏幕上输出到3
        final Condition condition = lock.newCondition();
        Thread threadA = new Thread(new Runnable() {
            @Override
            public void run() {
                System.out.println("A start");
                lock.lock();
                try {
                    System.out.println("A 获取到线程");
                } catch (Exception e) {
                    e.printStackTrace();
                } finally {
                    lock.unlock();
                }
            }
        });
        Thread threadB = new Thread(new Runnable() {
            @Override
            public void run() {
                System.out.println("B start");
                lock.lock();
                try {
                    System.out.println("B 获取到线程");
                } catch (Exception e) {
                    e.printStackTrace();
                } finally {
                    lock.unlock();
                }
            }
        });
        Thread threadC = new Thread(new Runnable() {
            @Override
            public void run() {
                System.out.println("C start");
                lock.lock();
                try {
                    System.out.println("C 获取到线程");
                } catch (Exception e) {
                    e.printStackTrace();
                } finally {
                    lock.unlock();
                }
            }
        });
        Thread threadD = new Thread(new Runnable() {
            @Override
            public void run() {
                System.out.println("D start");
                lock.lock();
                try {
                    System.out.println("D 获取到线程");
                } catch (Exception e) {
                    e.printStackTrace();
                } finally {
                    lock.unlock();
                }
            }
        });
        Thread threadE = new Thread(new Runnable() {
            @Override
            public void run() {
                System.out.println("E start");
                lock.lock();
                try {
                    System.out.println("E 获取到线程");
                } catch (Exception e) {
                    e.printStackTrace();
                } finally {
                    lock.unlock();
                }
            }
        });



        threadA.start();
        threadB.start();
        threadC.start();
        threadD.start();
        threadE.start();
    }
}
