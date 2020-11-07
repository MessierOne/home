FROM nginx:1.17.3
COPY ./ /var/www

RUN bash -c 'echo Copied contents: && ls -la /var/www'

COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 80
ENTRYPOINT ["nginx","-g","daemon off;"]
