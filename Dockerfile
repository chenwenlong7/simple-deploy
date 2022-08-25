# 选择一个体积较小的镜像
FROM node:14-alpine

# 设置为工作目录，以下 RUN/CMD 命令都是在工作目录中进行执行
WORKDIR /workSpace

# 把宿主机的代码添加到镜像中
ADD . /workSpace

RUN echo Leslie
# 安装依赖
RUN yarn

EXPOSE 3000

# 启动 Node Server
CMD npm start