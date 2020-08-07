docker ps -a

#防止删除失败
aa-remove-unknown

docker stop webdemo-8081
docker rm -f webdemo-8081
docker run -d --name webdemo-8081  -p 8452:8452 lgj/webdemo:1.0


docker ps -a | grep webdemo-8081
#查看启动日志
docker logs -f -t --tail 10  microblog-scheduler-web