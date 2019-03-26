package java_base.collection_framework_practice;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

/**
 * @author zlb
 * @description:
    代码运行结果证明了两点：
    1、LinkedList是有序的
    2、每次访问一个元素（get或put），被访问的元素都被提到最后面去了
    来源：https://www.cnblogs.com/xrq730/p/5052323.html
 * @date 2019/2/12 20:27
 */
public class LinkedHashMapValidate {

    public static void main(String[] args)
    {
        LinkedHashMap<String, String> linkedHashMap =
                new LinkedHashMap<String, String>(16, 0.75f, true);
        linkedHashMap.put("111", "111");
        linkedHashMap.put("222", "222");
        linkedHashMap.put("333", "333");
        linkedHashMap.put("444", "444");
        loopLinkedHashMap(linkedHashMap);
        linkedHashMap.get("111");
        loopLinkedHashMap(linkedHashMap);
        linkedHashMap.put("222", "2222");
        loopLinkedHashMap(linkedHashMap);
    }

    public static void loopLinkedHashMap(LinkedHashMap<String, String> linkedHashMap)
    {
        Set<Map.Entry<String, String>> set = linkedHashMap.entrySet();
        Iterator<Map.Entry<String, String>> iterator = set.iterator();

        while (iterator.hasNext())
        {
            System.out.print(iterator.next() + "\t");
        }
        System.out.println();
    }

}
