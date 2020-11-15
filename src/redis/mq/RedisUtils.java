package redis.mq;

import redis.clients.jedis.Jedis;

import java.time.temporal.JulianFields;

/**
 * @author zlb
 * @description:
 * @date 2020/11/15 17:49
 */
class RedisUtils {

    static Jedis jedis = new Jedis("47.98.114.178");

    public static void main(String[] args) {
        //连接本地的 Redis 服务

        // 如果 Redis 服务设置来密码，需要下面这行，没有就不需要
        // jedis.auth("123456");
        System.out.println("连接成功");
        //查看服务是否运行
        System.out.println("服务正在运行: "+jedis.ping());

        // jedis.lpush("list_test", "1", "2");
        String first = jedis.lindex("list_test", 0);
        System.out.println("first: " + first);

    }

    /**
     * @Description: 消息队列-插入数据
     * @author zlb
     * @date 2020/11/15 17:44
     */
    protected static Long intertToMQ(String key, String... strings){
        Long index = jedis.lpush(key, strings);
        return index;
    }

    /**
     * @Description: 消息队列-获取数据
     * @author zlb
     * @date 2020/11/15 17:44
     */
    protected static String getFromMQ(String key, int index){
        String result = jedis.lindex(key, index);
        return result;
    }

}
