# docker-nginx

#### 项目介绍
基于alpine 3.7版本构建的nginx镜像，默认采用UTC+8时区

#### git仓库目录说明
|目录|说明|
|:--|--|
|base|基本nginx目录|
|cron|基于base基础上构建的带计划任务的版本，默认内置每天0点运行"nginx -s reload"命令|

#### 容器目录映射
|目录|说明|
|:--|--|
|/etc/nginx/conf.d|nginx配置目录|
|/etc/periodic|计划任务配置目录|