FROM nginx
WORKDIR /app
COPY . /app/
COPY entrypoint.sh /docker-entrypoint.d/
RUN chmod +x  /docker-entrypoint.d/entrypoint.sh
#ENTRYPOINT ["/app/entrypoint.sh"]
#ENTRYPOINT env>/usr/share/nginx/html/index.html
#CMD ["/usr/sbin/nginx"]
#CMD ["/app/entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]
