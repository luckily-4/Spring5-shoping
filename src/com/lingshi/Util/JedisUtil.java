package com.lingshi.Util;

import org.apache.commons.pool2.impl.GenericObjectPoolConfig;
import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;
import redis.clients.jedis.JedisPoolConfig;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class JedisUtil {
      private  static  JedisPool jedisPool;
      static {
       InputStream is =JedisUtil.class.getClassLoader().getResourceAsStream("jedis.properties");
            Properties pro  =new Properties();
          try {
              pro.load(is);
          } catch (IOException e) {
              e.printStackTrace();
          }
          JedisPoolConfig conf = new JedisPoolConfig();
          conf.setMaxTotal(Integer.parseInt(pro.getProperty("maxTotal")));
          conf.setMaxIdle(Integer.parseInt(pro.getProperty("maxTotal")));
            GenericObjectPoolConfig poolConfig;
            jedisPool=new JedisPool(conf,pro.getProperty("host"),Integer.parseInt(pro.getProperty("port"))   );

      }
      public  static  Jedis getJedis(){
          return jedisPool.getResource();
      }
}
