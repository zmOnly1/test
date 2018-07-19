mvn help:actives-profile
mvn assembly:single -DdescriptorId=project
project、src、jar-with-dependencies、bin

redis-benchmark -h 127.0.0.1 -p 6379 -c 100 -n 100000
100个并发连接，100000个请求

redis-benchmark -h 127.0.0.1 -p 6379 -q -d 100
存取大小为100字节的数据包

redis-benchmark -t set,lpush -q -n 100000 
redis-benchmark -n 100000 -q script load "redis.call('set', 'foo', 'bar')"

git branch -r
git checkout -b v2.0 origin/v1.0
git push origin HEAD -u

hgetall map 获取所有的key value
hkeys map 
hvals map
hlen map
hmset map k1 v1 k2 v2
hdel map k1 k2

llen list
lrange list 0 2
lset list 0 100
lindex list 5
lpop list
rpop list
 
sadd set a b c d
scard set 返回个数
smembers set
sdiff set1 set2(set1 - set2)
sinter set1 set2 (set1 和 set2交集)
sunion set1 set2 并集
srandmember set1 2 
sismember set1 a
srem set1 a b 删除成员
spop set2 移除返回一个随机元素
  
zadd sortedset1 100 a 200 b 300 c
zcard sortedset1 元素个数
zscore sortedset a 查看分数
zcount sortedset 0 220（0到200分的个数）
zrank sortedset a 返回成员索引
zincrby sortedset 1000 a
zrange sortedset 0 100 获取分数0到100的元素
zrange sortedset 0 100 withscores 获取分数0到100的元素和分数
lpush list 1 2 3 4
