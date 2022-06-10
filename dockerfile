FROM nginx

copy ./files/site /usr/share/nginx/html
copy ./files/config /etc/nginx/conf.d/