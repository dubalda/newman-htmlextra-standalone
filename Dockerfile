FROM nginx:1.17.10-alpine

COPY default.conf /etc/nginx/conf.d/default.conf

RUN cat /etc/nginx/conf.d/default.conf && \
    rm /usr/share/nginx/html/index.html && \
    mkdir -p /usr/share/nginx/html/postman-reports && \
    chmod -R 777 /usr/share/nginx/html/postman-reports && \
    mkdir -p /usr/share/nginx/html/webfonts && \
    wget -P /usr/share/nginx/html/webfonts https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/webfonts/fa-solid-900.ttf && \
    wget -P /usr/share/nginx/html/webfonts https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/webfonts/fa-solid-900.woff && \
    wget -P /usr/share/nginx/html/webfonts https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/webfonts/fa-solid-900.woff2 && \
    wget -P /usr/share/nginx/html/webfonts https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/webfonts/fa-regular-400.eot && \
    wget -P /usr/share/nginx/html/webfonts https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/webfonts/fa-solid-900.eot && \
    wget -P /usr/share/nginx/html/webfonts https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/webfonts/fa-regular-400.woff && \
    wget -P /usr/share/nginx/html/webfonts https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/webfonts/fa-regular-400.ttf && \
    ls -lh /usr/share/nginx/html/webfonts && \
    mkdir -p /usr/share/nginx/html/newman-html-extra && \
    wget -P /usr/share/nginx/html/newman-html-extra https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css && \
    wget -P /usr/share/nginx/html/newman-html-extra https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css && \
    wget -P /usr/share/nginx/html/newman-html-extra https://cdnjs.cloudflare.com/ajax/libs/highlight.js/9.13.1/styles/github-gist.min.css && \
    wget -P /usr/share/nginx/html/newman-html-extra https://cdn.datatables.net/v/bs4/dt-1.10.18/datatables.min.css && \
    wget -P /usr/share/nginx/html/newman-html-extra https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js && \
    wget -P /usr/share/nginx/html/newman-html-extra https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.2.1/js/bootstrap.bundle.min.js && \
    wget -P /usr/share/nginx/html/newman-html-extra https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.2.1/js/bootstrap.bundle.min.js.map && \
    wget -P /usr/share/nginx/html/newman-html-extra https://cdn.datatables.net/v/bs4/dt-1.10.18/datatables.min.js && \
    wget -P /usr/share/nginx/html/newman-html-extra https://cdnjs.cloudflare.com/ajax/libs/clipboard.js/2.0.0/clipboard.min.js && \
    wget -P /usr/share/nginx/html/newman-html-extra https://cdnjs.cloudflare.com/ajax/libs/remarkable/1.7.1/remarkable.min.js && \
    wget -P /usr/share/nginx/html/newman-html-extra https://cdnjs.cloudflare.com/ajax/libs/highlight.js/9.13.1/highlight.min.js && \
    ls -lh /usr/share/nginx/html
