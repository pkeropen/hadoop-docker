# 基于Docker搭建Hadoop集群, 用于学习

> - ####在参考 博客: [基于Docker搭建Hadoop集群之升级版] 前提下从Ubuntu 更改成 Centos7 (http://kiwenlau.com/2016/06/12/160612-hadoop-cluster-docker-update/)


### 操作流程  

#### 1. pull docker 镜像

```
sudo docker pull kiwenlau/hadoop:1.0
```

#### 2. clone github repository

```
git clone https://github.com/pkeropen/hadoop-docker.git
```

#### 3. create hadoop network

```
sudo docker network create --driver=bridge hadoop
```

##### 4. start container

```
cd hadoop-cluster-docker
sudo ./start-container.sh
```

**output:**

```
start hadoop-master container...
start hadoop-slave1 container...
start hadoop-slave2 container...
root@hadoop-master:~# 
```

- 开启3个容器 ,一个主容器, 二个副容器
- 同时进去主容器, 可以执行下一步命令

##### 5. start hadoop
```
./start-hadoop.sh
```

##### 6. run wordcount 

```
./run-wordcount.sh
```