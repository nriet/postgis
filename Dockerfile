FROM bitnami/postgresql:15

MAINTAINER Axiu <itzyx@vip.qq.com>

ENV TZ PRC

#RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone 

# 安装PostGIS依赖
USER root
RUN apt-get update && \
    apt-get install -y postgis postgresql-15-postgis-3 && \
    rm -rf /var/lib/apt/lists/*

# 切换回PostgreSQL用户
#USER postgres

EXPOSE 5432