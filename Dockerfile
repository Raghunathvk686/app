FROM nginx:latest

ARG version=

RUN   echo "$version" > /usr/share/nginx/html/index.html

CMD ["nginx", "-g", "daemon off;"]

