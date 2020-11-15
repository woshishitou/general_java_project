package redis.mq;

import javax.sound.midi.Soundbank;

/**
 * @author zlb
 * @description: 消费者
 * @date 2020/11/15 17:52
 */
public class RedisConsumer {

    /**
     * @Description: 消费者
     * @author zlb
     * @date 2020/11/15 17:43
     */
    public static void main(String[] args) {
        int index  = 0;
        String result = RedisUtils.getFromMQ("list_test", index);
        System.out.println("result: " + result);
    }

}
