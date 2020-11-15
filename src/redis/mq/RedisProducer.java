package redis.mq;

/**
 * @author zlb
 * @description: 生产者
 * @date 2020/11/15 17:42
 */
public class RedisProducer {



    public static void main(String[] args) {
        Long index = RedisUtils.intertToMQ("list_test", "6", "7", "8");
        System.out.println("index: " + index);
    }



    /**
     * @Description: 生产者
     * @author zlb
     * @date 2020/11/15 17:43
     */
    private static void pro(){

    }

}
