FROM nginx:1.24.0

# 删除默认的 Nginx 配置文件
RUN rm /etc/nginx/conf.d/default.conf

# 将你的自定义 Nginx 配置文件复制到容器中
COPY nginx.conf /etc/nginx/conf.d/

# ... 其他指令和配置 ...

# 暴露 Nginx 的默认端口
EXPOSE 3030

# 启动 Nginx 服务器
CMD ["nginx", "-g", "daemon off;"]
