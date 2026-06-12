events {
    worker_connections 1024;
}

http {
    upstream python_app {
        server web:8000;  # ← web = имя вашего сервиса в compose
    }

    server {
        listen 80;

        location / {
            proxy_pass http://python_app;
            proxy_set_header Host $host;
            proxy_set_header X-Real-IP $remote_addr;
            proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        }
    }
}
