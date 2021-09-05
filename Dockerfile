FROM nginx:latest

ARG version=12

RUN   echo "$version" > /usr/share/nginx/html/index.html

CMD ["nginx", "-g", "daemon off;"]

