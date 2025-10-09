server {
    listen 80;
    server_name your-domain.com;  # или IP-адрес сервера

    # Статические файлы (если есть)
    location /static {
        alias /path/to/your/flask/app/static;
        expires 30d;
    }

    # Проксирование на Flask приложение
    location / {
        proxy_pass http://WINDOWS_IP:5000;  # IP вашего Windows компьютера
        proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto $scheme;
        
        # Дополнительные настройки для стабильности
        proxy_connect_timeout 60s;
        proxy_send_timeout 60s;
        proxy_read_timeout 60s;
    }
}
