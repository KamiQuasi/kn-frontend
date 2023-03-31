FROM docker.io/nginx
WORKDIR /usr/share/nginx/html
COPY ./www .
COPY nginx.conf /etc/nginx/nginx.conf
RUN chown -R 1001:0 /var/cache/nginx && chmod -R ug+rwx /var/cache/nginx && chown -R 1001:0 /var/run
USER 1001
EXPOSE 8080