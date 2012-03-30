-- Generated by GenCmds.hs. DO NOT EDIT.

{-# LANGUAGE OverloadedStrings, FlexibleContexts #-}

module Database.Redis.Commands (

-- ** Connection
auth, -- |Authenticate to the server (<http://redis.io/commands/auth>).
echo, -- |Echo the given string (<http://redis.io/commands/echo>).
ping, -- |Ping the server (<http://redis.io/commands/ping>).
quit, -- |Close the connection (<http://redis.io/commands/quit>).
select, -- |Change the selected database for the current connection (<http://redis.io/commands/select>).

-- ** Keys
del, -- |Delete a key (<http://redis.io/commands/del>).
exists, -- |Determine if a key exists (<http://redis.io/commands/exists>).
expire, -- |Set a key's time to live in seconds (<http://redis.io/commands/expire>).
expireat, -- |Set the expiration for a key as a UNIX timestamp (<http://redis.io/commands/expireat>).
keys, -- |Find all keys matching the given pattern (<http://redis.io/commands/keys>).
move, -- |Move a key to another database (<http://redis.io/commands/move>).
objectRefcount, -- |Inspect the internals of Redis objects (<http://redis.io/commands/object>). The Redis command @OBJECT@ is split up into 'objectRefcount', 'objectEncoding', 'objectIdletime'.
objectEncoding, -- |Inspect the internals of Redis objects (<http://redis.io/commands/object>). The Redis command @OBJECT@ is split up into 'objectRefcount', 'objectEncoding', 'objectIdletime'.
objectIdletime, -- |Inspect the internals of Redis objects (<http://redis.io/commands/object>). The Redis command @OBJECT@ is split up into 'objectRefcount', 'objectEncoding', 'objectIdletime'.
persist, -- |Remove the expiration from a key (<http://redis.io/commands/persist>).
pexpire, -- |Set a key's time to live in milliseconds (<http://redis.io/commands/pexpire>).
pexpireat, -- |Set the expiration for a key as a UNIX timestamp specified in milliseconds (<http://redis.io/commands/pexpireat>).
pttl, -- |Get the time to live for a key in milliseconds (<http://redis.io/commands/pttl>).
randomkey, -- |Return a random key from the keyspace (<http://redis.io/commands/randomkey>).
rename, -- |Rename a key (<http://redis.io/commands/rename>).
renamenx, -- |Rename a key, only if the new key does not exist (<http://redis.io/commands/renamenx>).
SortOpts(..),
defaultSortOpts,
SortOrder(..),
sort, -- |Sort the elements in a list, set or sorted set (<http://redis.io/commands/sort>). The Redis command @SORT@ is split up into 'sort', 'sortStore'.
sortStore, -- |Sort the elements in a list, set or sorted set (<http://redis.io/commands/sort>). The Redis command @SORT@ is split up into 'sort', 'sortStore'.
ttl, -- |Get the time to live for a key (<http://redis.io/commands/ttl>).
RedisType(..),
getType, -- |Determine the type stored at key (<http://redis.io/commands/type>).

-- ** Hashes
hdel, -- |Delete one or more hash fields (<http://redis.io/commands/hdel>).
hexists, -- |Determine if a hash field exists (<http://redis.io/commands/hexists>).
hget, -- |Get the value of a hash field (<http://redis.io/commands/hget>).
hgetall, -- |Get all the fields and values in a hash (<http://redis.io/commands/hgetall>).
hincrby, -- |Increment the integer value of a hash field by the given number (<http://redis.io/commands/hincrby>).
hincrbyfloat, -- |Increment the float value of a hash field by the given amount (<http://redis.io/commands/hincrbyfloat>).
hkeys, -- |Get all the fields in a hash (<http://redis.io/commands/hkeys>).
hlen, -- |Get the number of fields in a hash (<http://redis.io/commands/hlen>).
hmget, -- |Get the values of all the given hash fields (<http://redis.io/commands/hmget>).
hmset, -- |Set multiple hash fields to multiple values (<http://redis.io/commands/hmset>).
hset, -- |Set the string value of a hash field (<http://redis.io/commands/hset>).
hsetnx, -- |Set the value of a hash field, only if the field does not exist (<http://redis.io/commands/hsetnx>).
hvals, -- |Get all the values in a hash (<http://redis.io/commands/hvals>).

-- ** Lists
blpop, -- |Remove and get the first element in a list, or block until one is available (<http://redis.io/commands/blpop>).
brpop, -- |Remove and get the last element in a list, or block until one is available (<http://redis.io/commands/brpop>).
brpoplpush, -- |Pop a value from a list, push it to another list and return it; or block until one is available (<http://redis.io/commands/brpoplpush>).
lindex, -- |Get an element from a list by its index (<http://redis.io/commands/lindex>).
linsertBefore, -- |Insert an element before or after another element in a list (<http://redis.io/commands/linsert>). The Redis command @LINSERT@ is split up into 'linsertBefore', 'linsertAfter'.
linsertAfter, -- |Insert an element before or after another element in a list (<http://redis.io/commands/linsert>). The Redis command @LINSERT@ is split up into 'linsertBefore', 'linsertAfter'.
llen, -- |Get the length of a list (<http://redis.io/commands/llen>).
lpop, -- |Remove and get the first element in a list (<http://redis.io/commands/lpop>).
lpush, -- |Prepend one or multiple values to a list (<http://redis.io/commands/lpush>).
lpushx, -- |Prepend a value to a list, only if the list exists (<http://redis.io/commands/lpushx>).
lrange, -- |Get a range of elements from a list (<http://redis.io/commands/lrange>).
lrem, -- |Remove elements from a list (<http://redis.io/commands/lrem>).
lset, -- |Set the value of an element in a list by its index (<http://redis.io/commands/lset>).
ltrim, -- |Trim a list to the specified range (<http://redis.io/commands/ltrim>).
rpop, -- |Remove and get the last element in a list (<http://redis.io/commands/rpop>).
rpoplpush, -- |Remove the last element in a list, append it to another list and return it (<http://redis.io/commands/rpoplpush>).
rpush, -- |Append one or multiple values to a list (<http://redis.io/commands/rpush>).
rpushx, -- |Append a value to a list, only if the list exists (<http://redis.io/commands/rpushx>).

-- ** Scripting
eval, -- |Execute a Lua script server side (<http://redis.io/commands/eval>). The Redis command @EVAL@ is split up into 'eval', 'evalsha'.
evalsha, -- |Execute a Lua script server side (<http://redis.io/commands/eval>). The Redis command @EVAL@ is split up into 'eval', 'evalsha'.
scriptExists, -- |Check existence of scripts in the script cache. (<http://redis.io/commands/script-exists>).
scriptFlush, -- |Remove all the scripts from the script cache. (<http://redis.io/commands/script-flush>).
scriptKill, -- |Kill the script currently in execution. (<http://redis.io/commands/script-kill>).
scriptLoad, -- |Load the specified Lua script into the script cache. (<http://redis.io/commands/script-load>).

-- ** Server
bgrewriteaof, -- |Asynchronously rewrite the append-only file (<http://redis.io/commands/bgrewriteaof>).
bgsave, -- |Asynchronously save the dataset to disk (<http://redis.io/commands/bgsave>).
configGet, -- |Get the value of a configuration parameter (<http://redis.io/commands/config-get>).
configResetstat, -- |Reset the stats returned by INFO (<http://redis.io/commands/config-resetstat>).
configSet, -- |Set a configuration parameter to the given value (<http://redis.io/commands/config-set>).
dbsize, -- |Return the number of keys in the selected database (<http://redis.io/commands/dbsize>).
debugObject, -- |Get debugging information about a key (<http://redis.io/commands/debug-object>).
debugSegfault, -- |Make the server crash (<http://redis.io/commands/debug-segfault>).
flushall, -- |Remove all keys from all databases (<http://redis.io/commands/flushall>).
flushdb, -- |Remove all keys from the current database (<http://redis.io/commands/flushdb>).
info, -- |Get information and statistics about the server (<http://redis.io/commands/info>).
lastsave, -- |Get the UNIX time stamp of the last successful save to disk (<http://redis.io/commands/lastsave>).
save, -- |Synchronously save the dataset to disk (<http://redis.io/commands/save>).
slaveof, -- |Make the server a slave of another instance, or promote it as master (<http://redis.io/commands/slaveof>).
Slowlog(..),
slowlogGet, -- |Manages the Redis slow queries log (<http://redis.io/commands/slowlog>). The Redis command @SLOWLOG@ is split up into 'slowlogGet', 'slowlogLen', 'slowlogReset'.
slowlogLen, -- |Manages the Redis slow queries log (<http://redis.io/commands/slowlog>). The Redis command @SLOWLOG@ is split up into 'slowlogGet', 'slowlogLen', 'slowlogReset'.
slowlogReset, -- |Manages the Redis slow queries log (<http://redis.io/commands/slowlog>). The Redis command @SLOWLOG@ is split up into 'slowlogGet', 'slowlogLen', 'slowlogReset'.
time, -- |Return the current server time (<http://redis.io/commands/time>).

-- ** Sets
sadd, -- |Add one or more members to a set (<http://redis.io/commands/sadd>).
scard, -- |Get the number of members in a set (<http://redis.io/commands/scard>).
sdiff, -- |Subtract multiple sets (<http://redis.io/commands/sdiff>).
sdiffstore, -- |Subtract multiple sets and store the resulting set in a key (<http://redis.io/commands/sdiffstore>).
sinter, -- |Intersect multiple sets (<http://redis.io/commands/sinter>).
sinterstore, -- |Intersect multiple sets and store the resulting set in a key (<http://redis.io/commands/sinterstore>).
sismember, -- |Determine if a given value is a member of a set (<http://redis.io/commands/sismember>).
smembers, -- |Get all the members in a set (<http://redis.io/commands/smembers>).
smove, -- |Move a member from one set to another (<http://redis.io/commands/smove>).
spop, -- |Remove and return a random member from a set (<http://redis.io/commands/spop>).
srandmember, -- |Get a random member from a set (<http://redis.io/commands/srandmember>).
srem, -- |Remove one or more members from a set (<http://redis.io/commands/srem>).
sunion, -- |Add multiple sets (<http://redis.io/commands/sunion>).
sunionstore, -- |Add multiple sets and store the resulting set in a key (<http://redis.io/commands/sunionstore>).

-- ** Sorted Sets
zadd, -- |Add one or more members to a sorted set, or update its score if it already exists (<http://redis.io/commands/zadd>).
zcard, -- |Get the number of members in a sorted set (<http://redis.io/commands/zcard>).
zcount, -- |Count the members in a sorted set with scores within the given values (<http://redis.io/commands/zcount>).
zincrby, -- |Increment the score of a member in a sorted set (<http://redis.io/commands/zincrby>).
Aggregate(..),
zinterstore, -- |Intersect multiple sorted sets and store the resulting sorted set in a new key (<http://redis.io/commands/zinterstore>). The Redis command @ZINTERSTORE@ is split up into 'zinterstore', 'zinterstoreWeights'.
zinterstoreWeights, -- |Intersect multiple sorted sets and store the resulting sorted set in a new key (<http://redis.io/commands/zinterstore>). The Redis command @ZINTERSTORE@ is split up into 'zinterstore', 'zinterstoreWeights'.
zrange, -- |Return a range of members in a sorted set, by index (<http://redis.io/commands/zrange>). The Redis command @ZRANGE@ is split up into 'zrange', 'zrangeWithscores'.
zrangeWithscores, -- |Return a range of members in a sorted set, by index (<http://redis.io/commands/zrange>). The Redis command @ZRANGE@ is split up into 'zrange', 'zrangeWithscores'.
zrangebyscore, -- |Return a range of members in a sorted set, by score (<http://redis.io/commands/zrangebyscore>). The Redis command @ZRANGEBYSCORE@ is split up into 'zrangebyscore', 'zrangebyscoreWithscores', 'zrangebyscoreLimit', 'zrangebyscoreWithscoresLimit'.
zrangebyscoreWithscores, -- |Return a range of members in a sorted set, by score (<http://redis.io/commands/zrangebyscore>). The Redis command @ZRANGEBYSCORE@ is split up into 'zrangebyscore', 'zrangebyscoreWithscores', 'zrangebyscoreLimit', 'zrangebyscoreWithscoresLimit'.
zrangebyscoreLimit, -- |Return a range of members in a sorted set, by score (<http://redis.io/commands/zrangebyscore>). The Redis command @ZRANGEBYSCORE@ is split up into 'zrangebyscore', 'zrangebyscoreWithscores', 'zrangebyscoreLimit', 'zrangebyscoreWithscoresLimit'.
zrangebyscoreWithscoresLimit, -- |Return a range of members in a sorted set, by score (<http://redis.io/commands/zrangebyscore>). The Redis command @ZRANGEBYSCORE@ is split up into 'zrangebyscore', 'zrangebyscoreWithscores', 'zrangebyscoreLimit', 'zrangebyscoreWithscoresLimit'.
zrank, -- |Determine the index of a member in a sorted set (<http://redis.io/commands/zrank>).
zrem, -- |Remove one or more members from a sorted set (<http://redis.io/commands/zrem>).
zremrangebyrank, -- |Remove all members in a sorted set within the given indexes (<http://redis.io/commands/zremrangebyrank>).
zremrangebyscore, -- |Remove all members in a sorted set within the given scores (<http://redis.io/commands/zremrangebyscore>).
zrevrange, -- |Return a range of members in a sorted set, by index, with scores ordered from high to low (<http://redis.io/commands/zrevrange>). The Redis command @ZREVRANGE@ is split up into 'zrevrange', 'zrevrangeWithscores'.
zrevrangeWithscores, -- |Return a range of members in a sorted set, by index, with scores ordered from high to low (<http://redis.io/commands/zrevrange>). The Redis command @ZREVRANGE@ is split up into 'zrevrange', 'zrevrangeWithscores'.
zrevrangebyscore, -- |Return a range of members in a sorted set, by score, with scores ordered from high to low (<http://redis.io/commands/zrevrangebyscore>). The Redis command @ZREVRANGEBYSCORE@ is split up into 'zrevrangebyscore', 'zrevrangebyscoreWithscores', 'zrevrangebyscoreLimit', 'zrevrangebyscoreWithscoresLimit'.
zrevrangebyscoreWithscores, -- |Return a range of members in a sorted set, by score, with scores ordered from high to low (<http://redis.io/commands/zrevrangebyscore>). The Redis command @ZREVRANGEBYSCORE@ is split up into 'zrevrangebyscore', 'zrevrangebyscoreWithscores', 'zrevrangebyscoreLimit', 'zrevrangebyscoreWithscoresLimit'.
zrevrangebyscoreLimit, -- |Return a range of members in a sorted set, by score, with scores ordered from high to low (<http://redis.io/commands/zrevrangebyscore>). The Redis command @ZREVRANGEBYSCORE@ is split up into 'zrevrangebyscore', 'zrevrangebyscoreWithscores', 'zrevrangebyscoreLimit', 'zrevrangebyscoreWithscoresLimit'.
zrevrangebyscoreWithscoresLimit, -- |Return a range of members in a sorted set, by score, with scores ordered from high to low (<http://redis.io/commands/zrevrangebyscore>). The Redis command @ZREVRANGEBYSCORE@ is split up into 'zrevrangebyscore', 'zrevrangebyscoreWithscores', 'zrevrangebyscoreLimit', 'zrevrangebyscoreWithscoresLimit'.
zrevrank, -- |Determine the index of a member in a sorted set, with scores ordered from high to low (<http://redis.io/commands/zrevrank>).
zscore, -- |Get the score associated with the given member in a sorted set (<http://redis.io/commands/zscore>).
zunionstore, -- |Add multiple sorted sets and store the resulting sorted set in a new key (<http://redis.io/commands/zunionstore>). The Redis command @ZUNIONSTORE@ is split up into 'zunionstore', 'zunionstoreWeights'.
zunionstoreWeights, -- |Add multiple sorted sets and store the resulting sorted set in a new key (<http://redis.io/commands/zunionstore>). The Redis command @ZUNIONSTORE@ is split up into 'zunionstore', 'zunionstoreWeights'.

-- ** Strings
append, -- |Append a value to a key (<http://redis.io/commands/append>).
decr, -- |Decrement the integer value of a key by one (<http://redis.io/commands/decr>).
decrby, -- |Decrement the integer value of a key by the given number (<http://redis.io/commands/decrby>).
get, -- |Get the value of a key (<http://redis.io/commands/get>).
getbit, -- |Returns the bit value at offset in the string value stored at key (<http://redis.io/commands/getbit>).
getrange, -- |Get a substring of the string stored at a key (<http://redis.io/commands/getrange>).
getset, -- |Set the string value of a key and return its old value (<http://redis.io/commands/getset>).
incr, -- |Increment the integer value of a key by one (<http://redis.io/commands/incr>).
incrby, -- |Increment the integer value of a key by the given amount (<http://redis.io/commands/incrby>).
incrbyfloat, -- |Increment the float value of a key by the given amount (<http://redis.io/commands/incrbyfloat>).
mget, -- |Get the values of all the given keys (<http://redis.io/commands/mget>).
mset, -- |Set multiple keys to multiple values (<http://redis.io/commands/mset>).
msetnx, -- |Set multiple keys to multiple values, only if none of the keys exist (<http://redis.io/commands/msetnx>).
psetex, -- |Set the value and expiration in milliseconds of a key (<http://redis.io/commands/psetex>).
set, -- |Set the string value of a key (<http://redis.io/commands/set>).
setbit, -- |Sets or clears the bit at offset in the string value stored at key (<http://redis.io/commands/setbit>).
setex, -- |Set the value and expiration of a key (<http://redis.io/commands/setex>).
setnx, -- |Set the value of a key, only if the key does not exist (<http://redis.io/commands/setnx>).
setrange, -- |Overwrite part of a string at key starting at the specified offset (<http://redis.io/commands/setrange>).
strlen, -- |Get the length of the value stored in a key (<http://redis.io/commands/strlen>).

-- * Unimplemented Commands
-- |These commands are not implemented, as of now. Library
--  users can implement these or other commands from
--  experimental Redis versions by using the 'sendRequest'
--  function.
--
-- * MONITOR (<http://redis.io/commands/monitor>)
--
--
-- * SYNC (<http://redis.io/commands/sync>)
--
--
-- * SHUTDOWN (<http://redis.io/commands/shutdown>)
--
) where

import Prelude hiding (min,max)
import Data.ByteString (ByteString)
import Database.Redis.ManualCommands
import Database.Redis.Types
import Database.Redis.Core

flushall
    :: (RedisCtx m f)
    => m (f Status)
flushall  = sendRequest (["FLUSHALL"] )

hdel
    :: (RedisCtx m f)
    => ByteString -- ^ key
    -> [ByteString] -- ^ field
    -> m (f Bool)
hdel key field = sendRequest (["HDEL"] ++ [encode key] ++ map encode field )

hincrby
    :: (RedisCtx m f)
    => ByteString -- ^ key
    -> ByteString -- ^ field
    -> Integer -- ^ increment
    -> m (f Integer)
hincrby key field increment = sendRequest (["HINCRBY"] ++ [encode key] ++ [encode field] ++ [encode increment] )

time
    :: (RedisCtx m f)
    => m (f (Integer,Integer))
time  = sendRequest (["TIME"] )

hincrbyfloat
    :: (RedisCtx m f)
    => ByteString -- ^ key
    -> ByteString -- ^ field
    -> Double -- ^ increment
    -> m (f Double)
hincrbyfloat key field increment = sendRequest (["HINCRBYFLOAT"] ++ [encode key] ++ [encode field] ++ [encode increment] )

configResetstat
    :: (RedisCtx m f)
    => m (f Status)
configResetstat  = sendRequest (["CONFIG","RESETSTAT"] )

scriptKill
    :: (RedisCtx m f)
    => m (f Status)
scriptKill  = sendRequest (["SCRIPT","KILL"] )

del
    :: (RedisCtx m f)
    => [ByteString] -- ^ key
    -> m (f Integer)
del key = sendRequest (["DEL"] ++ map encode key )

zrevrank
    :: (RedisCtx m f)
    => ByteString -- ^ key
    -> ByteString -- ^ member
    -> m (f (Maybe Integer))
zrevrank key member = sendRequest (["ZREVRANK"] ++ [encode key] ++ [encode member] )

brpoplpush
    :: (RedisCtx m f)
    => ByteString -- ^ source
    -> ByteString -- ^ destination
    -> Integer -- ^ timeout
    -> m (f (Maybe ByteString))
brpoplpush source destination timeout = sendRequest (["BRPOPLPUSH"] ++ [encode source] ++ [encode destination] ++ [encode timeout] )

incrby
    :: (RedisCtx m f)
    => ByteString -- ^ key
    -> Integer -- ^ increment
    -> m (f Integer)
incrby key increment = sendRequest (["INCRBY"] ++ [encode key] ++ [encode increment] )

rpop
    :: (RedisCtx m f)
    => ByteString -- ^ key
    -> m (f (Maybe ByteString))
rpop key = sendRequest (["RPOP"] ++ [encode key] )

setrange
    :: (RedisCtx m f)
    => ByteString -- ^ key
    -> Integer -- ^ offset
    -> ByteString -- ^ value
    -> m (f Integer)
setrange key offset value = sendRequest (["SETRANGE"] ++ [encode key] ++ [encode offset] ++ [encode value] )

setbit
    :: (RedisCtx m f)
    => ByteString -- ^ key
    -> Integer -- ^ offset
    -> ByteString -- ^ value
    -> m (f Integer)
setbit key offset value = sendRequest (["SETBIT"] ++ [encode key] ++ [encode offset] ++ [encode value] )

incrbyfloat
    :: (RedisCtx m f)
    => ByteString -- ^ key
    -> Double -- ^ increment
    -> m (f Double)
incrbyfloat key increment = sendRequest (["INCRBYFLOAT"] ++ [encode key] ++ [encode increment] )

save
    :: (RedisCtx m f)
    => m (f Status)
save  = sendRequest (["SAVE"] )

echo
    :: (RedisCtx m f)
    => ByteString -- ^ message
    -> m (f ByteString)
echo message = sendRequest (["ECHO"] ++ [encode message] )

blpop
    :: (RedisCtx m f)
    => [ByteString] -- ^ key
    -> Integer -- ^ timeout
    -> m (f (Maybe (ByteString,ByteString)))
blpop key timeout = sendRequest (["BLPOP"] ++ map encode key ++ [encode timeout] )

sdiffstore
    :: (RedisCtx m f)
    => ByteString -- ^ destination
    -> [ByteString] -- ^ key
    -> m (f Integer)
sdiffstore destination key = sendRequest (["SDIFFSTORE"] ++ [encode destination] ++ map encode key )

move
    :: (RedisCtx m f)
    => ByteString -- ^ key
    -> Integer -- ^ db
    -> m (f Bool)
move key db = sendRequest (["MOVE"] ++ [encode key] ++ [encode db] )

scriptLoad
    :: (RedisCtx m f)
    => ByteString -- ^ script
    -> m (f ByteString)
scriptLoad script = sendRequest (["SCRIPT","LOAD"] ++ [encode script] )

getrange
    :: (RedisCtx m f)
    => ByteString -- ^ key
    -> Integer -- ^ start
    -> Integer -- ^ end
    -> m (f ByteString)
getrange key start end = sendRequest (["GETRANGE"] ++ [encode key] ++ [encode start] ++ [encode end] )

srem
    :: (RedisCtx m f)
    => ByteString -- ^ key
    -> [ByteString] -- ^ member
    -> m (f Integer)
srem key member = sendRequest (["SREM"] ++ [encode key] ++ map encode member )

getbit
    :: (RedisCtx m f)
    => ByteString -- ^ key
    -> Integer -- ^ offset
    -> m (f Integer)
getbit key offset = sendRequest (["GETBIT"] ++ [encode key] ++ [encode offset] )

zcount
    :: (RedisCtx m f)
    => ByteString -- ^ key
    -> Double -- ^ min
    -> Double -- ^ max
    -> m (f Integer)
zcount key min max = sendRequest (["ZCOUNT"] ++ [encode key] ++ [encode min] ++ [encode max] )

quit
    :: (RedisCtx m f)
    => m (f Status)
quit  = sendRequest (["QUIT"] )

msetnx
    :: (RedisCtx m f)
    => [(ByteString,ByteString)] -- ^ keyValue
    -> m (f Bool)
msetnx keyValue = sendRequest (["MSETNX"] ++ concatMap (\(x,y) -> [encode x,encode y])keyValue )

sismember
    :: (RedisCtx m f)
    => ByteString -- ^ key
    -> ByteString -- ^ member
    -> m (f Bool)
sismember key member = sendRequest (["SISMEMBER"] ++ [encode key] ++ [encode member] )

bgrewriteaof
    :: (RedisCtx m f)
    => m (f Status)
bgrewriteaof  = sendRequest (["BGREWRITEAOF"] )

hmset
    :: (RedisCtx m f)
    => ByteString -- ^ key
    -> [(ByteString,ByteString)] -- ^ fieldValue
    -> m (f Status)
hmset key fieldValue = sendRequest (["HMSET"] ++ [encode key] ++ concatMap (\(x,y) -> [encode x,encode y])fieldValue )

scard
    :: (RedisCtx m f)
    => ByteString -- ^ key
    -> m (f Integer)
scard key = sendRequest (["SCARD"] ++ [encode key] )

zincrby
    :: (RedisCtx m f)
    => ByteString -- ^ key
    -> Integer -- ^ increment
    -> ByteString -- ^ member
    -> m (f Double)
zincrby key increment member = sendRequest (["ZINCRBY"] ++ [encode key] ++ [encode increment] ++ [encode member] )

sinter
    :: (RedisCtx m f)
    => [ByteString] -- ^ key
    -> m (f [ByteString])
sinter key = sendRequest (["SINTER"] ++ map encode key )

scriptExists
    :: (RedisCtx m f)
    => [ByteString] -- ^ script
    -> m (f [Bool])
scriptExists script = sendRequest (["SCRIPT","EXISTS"] ++ map encode script )

mset
    :: (RedisCtx m f)
    => [(ByteString,ByteString)] -- ^ keyValue
    -> m (f Status)
mset keyValue = sendRequest (["MSET"] ++ concatMap (\(x,y) -> [encode x,encode y])keyValue )

psetex
    :: (RedisCtx m f)
    => ByteString -- ^ key
    -> Integer -- ^ milliseconds
    -> ByteString -- ^ value
    -> m (f Status)
psetex key milliseconds value = sendRequest (["PSETEX"] ++ [encode key] ++ [encode milliseconds] ++ [encode value] )

rpoplpush
    :: (RedisCtx m f)
    => ByteString -- ^ source
    -> ByteString -- ^ destination
    -> m (f (Maybe ByteString))
rpoplpush source destination = sendRequest (["RPOPLPUSH"] ++ [encode source] ++ [encode destination] )

hlen
    :: (RedisCtx m f)
    => ByteString -- ^ key
    -> m (f Integer)
hlen key = sendRequest (["HLEN"] ++ [encode key] )

setex
    :: (RedisCtx m f)
    => ByteString -- ^ key
    -> Integer -- ^ seconds
    -> ByteString -- ^ value
    -> m (f Status)
setex key seconds value = sendRequest (["SETEX"] ++ [encode key] ++ [encode seconds] ++ [encode value] )

sunionstore
    :: (RedisCtx m f)
    => ByteString -- ^ destination
    -> [ByteString] -- ^ key
    -> m (f Integer)
sunionstore destination key = sendRequest (["SUNIONSTORE"] ++ [encode destination] ++ map encode key )

brpop
    :: (RedisCtx m f)
    => [ByteString] -- ^ key
    -> Integer -- ^ timeout
    -> m (f (Maybe (ByteString,ByteString)))
brpop key timeout = sendRequest (["BRPOP"] ++ map encode key ++ [encode timeout] )

hgetall
    :: (RedisCtx m f)
    => ByteString -- ^ key
    -> m (f [(ByteString,ByteString)])
hgetall key = sendRequest (["HGETALL"] ++ [encode key] )

pexpire
    :: (RedisCtx m f)
    => ByteString -- ^ key
    -> Integer -- ^ milliseconds
    -> m (f Bool)
pexpire key milliseconds = sendRequest (["PEXPIRE"] ++ [encode key] ++ [encode milliseconds] )

dbsize
    :: (RedisCtx m f)
    => m (f Integer)
dbsize  = sendRequest (["DBSIZE"] )

lpop
    :: (RedisCtx m f)
    => ByteString -- ^ key
    -> m (f (Maybe ByteString))
lpop key = sendRequest (["LPOP"] ++ [encode key] )

hmget
    :: (RedisCtx m f)
    => ByteString -- ^ key
    -> [ByteString] -- ^ field
    -> m (f [Maybe ByteString])
hmget key field = sendRequest (["HMGET"] ++ [encode key] ++ map encode field )

lrange
    :: (RedisCtx m f)
    => ByteString -- ^ key
    -> Integer -- ^ start
    -> Integer -- ^ stop
    -> m (f [ByteString])
lrange key start stop = sendRequest (["LRANGE"] ++ [encode key] ++ [encode start] ++ [encode stop] )

expire
    :: (RedisCtx m f)
    => ByteString -- ^ key
    -> Integer -- ^ seconds
    -> m (f Bool)
expire key seconds = sendRequest (["EXPIRE"] ++ [encode key] ++ [encode seconds] )

scriptFlush
    :: (RedisCtx m f)
    => m (f Status)
scriptFlush  = sendRequest (["SCRIPT","FLUSH"] )

lastsave
    :: (RedisCtx m f)
    => m (f Integer)
lastsave  = sendRequest (["LASTSAVE"] )

llen
    :: (RedisCtx m f)
    => ByteString -- ^ key
    -> m (f Integer)
llen key = sendRequest (["LLEN"] ++ [encode key] )

decrby
    :: (RedisCtx m f)
    => ByteString -- ^ key
    -> Integer -- ^ decrement
    -> m (f Integer)
decrby key decrement = sendRequest (["DECRBY"] ++ [encode key] ++ [encode decrement] )

mget
    :: (RedisCtx m f)
    => [ByteString] -- ^ key
    -> m (f [Maybe ByteString])
mget key = sendRequest (["MGET"] ++ map encode key )

zadd
    :: (RedisCtx m f)
    => ByteString -- ^ key
    -> [(Double,ByteString)] -- ^ scoreMember
    -> m (f Integer)
zadd key scoreMember = sendRequest (["ZADD"] ++ [encode key] ++ concatMap (\(x,y) -> [encode x,encode y])scoreMember )

keys
    :: (RedisCtx m f)
    => ByteString -- ^ pattern
    -> m (f [ByteString])
keys pattern = sendRequest (["KEYS"] ++ [encode pattern] )

bgsave
    :: (RedisCtx m f)
    => m (f Status)
bgsave  = sendRequest (["BGSAVE"] )

slaveof
    :: (RedisCtx m f)
    => ByteString -- ^ host
    -> ByteString -- ^ port
    -> m (f Status)
slaveof host port = sendRequest (["SLAVEOF"] ++ [encode host] ++ [encode port] )

debugObject
    :: (RedisCtx m f)
    => ByteString -- ^ key
    -> m (f ByteString)
debugObject key = sendRequest (["DEBUG","OBJECT"] ++ [encode key] )

getset
    :: (RedisCtx m f)
    => ByteString -- ^ key
    -> ByteString -- ^ value
    -> m (f (Maybe ByteString))
getset key value = sendRequest (["GETSET"] ++ [encode key] ++ [encode value] )

rpushx
    :: (RedisCtx m f)
    => ByteString -- ^ key
    -> ByteString -- ^ value
    -> m (f Integer)
rpushx key value = sendRequest (["RPUSHX"] ++ [encode key] ++ [encode value] )

setnx
    :: (RedisCtx m f)
    => ByteString -- ^ key
    -> ByteString -- ^ value
    -> m (f Bool)
setnx key value = sendRequest (["SETNX"] ++ [encode key] ++ [encode value] )

zrank
    :: (RedisCtx m f)
    => ByteString -- ^ key
    -> ByteString -- ^ member
    -> m (f (Maybe Integer))
zrank key member = sendRequest (["ZRANK"] ++ [encode key] ++ [encode member] )

zremrangebyscore
    :: (RedisCtx m f)
    => ByteString -- ^ key
    -> Double -- ^ min
    -> Double -- ^ max
    -> m (f Integer)
zremrangebyscore key min max = sendRequest (["ZREMRANGEBYSCORE"] ++ [encode key] ++ [encode min] ++ [encode max] )

ttl
    :: (RedisCtx m f)
    => ByteString -- ^ key
    -> m (f Integer)
ttl key = sendRequest (["TTL"] ++ [encode key] )

hkeys
    :: (RedisCtx m f)
    => ByteString -- ^ key
    -> m (f [ByteString])
hkeys key = sendRequest (["HKEYS"] ++ [encode key] )

rpush
    :: (RedisCtx m f)
    => ByteString -- ^ key
    -> [ByteString] -- ^ value
    -> m (f Integer)
rpush key value = sendRequest (["RPUSH"] ++ [encode key] ++ map encode value )

randomkey
    :: (RedisCtx m f)
    => m (f (Maybe ByteString))
randomkey  = sendRequest (["RANDOMKEY"] )

pttl
    :: (RedisCtx m f)
    => ByteString -- ^ key
    -> m (f Integer)
pttl key = sendRequest (["PTTL"] ++ [encode key] )

spop
    :: (RedisCtx m f)
    => ByteString -- ^ key
    -> m (f (Maybe ByteString))
spop key = sendRequest (["SPOP"] ++ [encode key] )

hsetnx
    :: (RedisCtx m f)
    => ByteString -- ^ key
    -> ByteString -- ^ field
    -> ByteString -- ^ value
    -> m (f Bool)
hsetnx key field value = sendRequest (["HSETNX"] ++ [encode key] ++ [encode field] ++ [encode value] )

configGet
    :: (RedisCtx m f)
    => ByteString -- ^ parameter
    -> m (f [(ByteString,ByteString)])
configGet parameter = sendRequest (["CONFIG","GET"] ++ [encode parameter] )

hvals
    :: (RedisCtx m f)
    => ByteString -- ^ key
    -> m (f [ByteString])
hvals key = sendRequest (["HVALS"] ++ [encode key] )

exists
    :: (RedisCtx m f)
    => ByteString -- ^ key
    -> m (f Bool)
exists key = sendRequest (["EXISTS"] ++ [encode key] )

sunion
    :: (RedisCtx m f)
    => [ByteString] -- ^ key
    -> m (f [ByteString])
sunion key = sendRequest (["SUNION"] ++ map encode key )

zrem
    :: (RedisCtx m f)
    => ByteString -- ^ key
    -> [ByteString] -- ^ member
    -> m (f Integer)
zrem key member = sendRequest (["ZREM"] ++ [encode key] ++ map encode member )

smembers
    :: (RedisCtx m f)
    => ByteString -- ^ key
    -> m (f [ByteString])
smembers key = sendRequest (["SMEMBERS"] ++ [encode key] )

ping
    :: (RedisCtx m f)
    => m (f Status)
ping  = sendRequest (["PING"] )

rename
    :: (RedisCtx m f)
    => ByteString -- ^ key
    -> ByteString -- ^ newkey
    -> m (f Status)
rename key newkey = sendRequest (["RENAME"] ++ [encode key] ++ [encode newkey] )

decr
    :: (RedisCtx m f)
    => ByteString -- ^ key
    -> m (f Integer)
decr key = sendRequest (["DECR"] ++ [encode key] )

select
    :: (RedisCtx m f)
    => Integer -- ^ index
    -> m (f Status)
select index = sendRequest (["SELECT"] ++ [encode index] )

hexists
    :: (RedisCtx m f)
    => ByteString -- ^ key
    -> ByteString -- ^ field
    -> m (f Bool)
hexists key field = sendRequest (["HEXISTS"] ++ [encode key] ++ [encode field] )

sinterstore
    :: (RedisCtx m f)
    => ByteString -- ^ destination
    -> [ByteString] -- ^ key
    -> m (f Integer)
sinterstore destination key = sendRequest (["SINTERSTORE"] ++ [encode destination] ++ map encode key )

configSet
    :: (RedisCtx m f)
    => ByteString -- ^ parameter
    -> ByteString -- ^ value
    -> m (f Status)
configSet parameter value = sendRequest (["CONFIG","SET"] ++ [encode parameter] ++ [encode value] )

renamenx
    :: (RedisCtx m f)
    => ByteString -- ^ key
    -> ByteString -- ^ newkey
    -> m (f Bool)
renamenx key newkey = sendRequest (["RENAMENX"] ++ [encode key] ++ [encode newkey] )

expireat
    :: (RedisCtx m f)
    => ByteString -- ^ key
    -> Integer -- ^ timestamp
    -> m (f Bool)
expireat key timestamp = sendRequest (["EXPIREAT"] ++ [encode key] ++ [encode timestamp] )

get
    :: (RedisCtx m f)
    => ByteString -- ^ key
    -> m (f (Maybe ByteString))
get key = sendRequest (["GET"] ++ [encode key] )

lrem
    :: (RedisCtx m f)
    => ByteString -- ^ key
    -> Integer -- ^ count
    -> ByteString -- ^ value
    -> m (f Integer)
lrem key count value = sendRequest (["LREM"] ++ [encode key] ++ [encode count] ++ [encode value] )

incr
    :: (RedisCtx m f)
    => ByteString -- ^ key
    -> m (f Integer)
incr key = sendRequest (["INCR"] ++ [encode key] )

pexpireat
    :: (RedisCtx m f)
    => ByteString -- ^ key
    -> Integer -- ^ millisecondsTimestamp
    -> m (f Bool)
pexpireat key millisecondsTimestamp = sendRequest (["PEXPIREAT"] ++ [encode key] ++ [encode millisecondsTimestamp] )

zcard
    :: (RedisCtx m f)
    => ByteString -- ^ key
    -> m (f Integer)
zcard key = sendRequest (["ZCARD"] ++ [encode key] )

ltrim
    :: (RedisCtx m f)
    => ByteString -- ^ key
    -> Integer -- ^ start
    -> Integer -- ^ stop
    -> m (f Status)
ltrim key start stop = sendRequest (["LTRIM"] ++ [encode key] ++ [encode start] ++ [encode stop] )

append
    :: (RedisCtx m f)
    => ByteString -- ^ key
    -> ByteString -- ^ value
    -> m (f Integer)
append key value = sendRequest (["APPEND"] ++ [encode key] ++ [encode value] )

lset
    :: (RedisCtx m f)
    => ByteString -- ^ key
    -> Integer -- ^ index
    -> ByteString -- ^ value
    -> m (f Status)
lset key index value = sendRequest (["LSET"] ++ [encode key] ++ [encode index] ++ [encode value] )

info
    :: (RedisCtx m f)
    => m (f ByteString)
info  = sendRequest (["INFO"] )

hget
    :: (RedisCtx m f)
    => ByteString -- ^ key
    -> ByteString -- ^ field
    -> m (f (Maybe ByteString))
hget key field = sendRequest (["HGET"] ++ [encode key] ++ [encode field] )

sdiff
    :: (RedisCtx m f)
    => [ByteString] -- ^ key
    -> m (f [ByteString])
sdiff key = sendRequest (["SDIFF"] ++ map encode key )

smove
    :: (RedisCtx m f)
    => ByteString -- ^ source
    -> ByteString -- ^ destination
    -> ByteString -- ^ member
    -> m (f Bool)
smove source destination member = sendRequest (["SMOVE"] ++ [encode source] ++ [encode destination] ++ [encode member] )

flushdb
    :: (RedisCtx m f)
    => m (f Status)
flushdb  = sendRequest (["FLUSHDB"] )

set
    :: (RedisCtx m f)
    => ByteString -- ^ key
    -> ByteString -- ^ value
    -> m (f Status)
set key value = sendRequest (["SET"] ++ [encode key] ++ [encode value] )

zremrangebyrank
    :: (RedisCtx m f)
    => ByteString -- ^ key
    -> Integer -- ^ start
    -> Integer -- ^ stop
    -> m (f Integer)
zremrangebyrank key start stop = sendRequest (["ZREMRANGEBYRANK"] ++ [encode key] ++ [encode start] ++ [encode stop] )

sadd
    :: (RedisCtx m f)
    => ByteString -- ^ key
    -> [ByteString] -- ^ member
    -> m (f Integer)
sadd key member = sendRequest (["SADD"] ++ [encode key] ++ map encode member )

lpush
    :: (RedisCtx m f)
    => ByteString -- ^ key
    -> [ByteString] -- ^ value
    -> m (f Integer)
lpush key value = sendRequest (["LPUSH"] ++ [encode key] ++ map encode value )

lindex
    :: (RedisCtx m f)
    => ByteString -- ^ key
    -> Integer -- ^ index
    -> m (f (Maybe ByteString))
lindex key index = sendRequest (["LINDEX"] ++ [encode key] ++ [encode index] )

zscore
    :: (RedisCtx m f)
    => ByteString -- ^ key
    -> ByteString -- ^ member
    -> m (f (Maybe Double))
zscore key member = sendRequest (["ZSCORE"] ++ [encode key] ++ [encode member] )

strlen
    :: (RedisCtx m f)
    => ByteString -- ^ key
    -> m (f Integer)
strlen key = sendRequest (["STRLEN"] ++ [encode key] )

hset
    :: (RedisCtx m f)
    => ByteString -- ^ key
    -> ByteString -- ^ field
    -> ByteString -- ^ value
    -> m (f Bool)
hset key field value = sendRequest (["HSET"] ++ [encode key] ++ [encode field] ++ [encode value] )

lpushx
    :: (RedisCtx m f)
    => ByteString -- ^ key
    -> ByteString -- ^ value
    -> m (f Integer)
lpushx key value = sendRequest (["LPUSHX"] ++ [encode key] ++ [encode value] )

debugSegfault
    :: (RedisCtx m f)
    => m (f Status)
debugSegfault  = sendRequest (["DEBUG","SEGFAULT"] )

srandmember
    :: (RedisCtx m f)
    => ByteString -- ^ key
    -> m (f (Maybe ByteString))
srandmember key = sendRequest (["SRANDMEMBER"] ++ [encode key] )

persist
    :: (RedisCtx m f)
    => ByteString -- ^ key
    -> m (f Bool)
persist key = sendRequest (["PERSIST"] ++ [encode key] )



