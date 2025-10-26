
c18f1c95c170421fb9f8ae3e37fed95b
sudo -u jenkins pip install flask flask_sqlalchemy flask-wtf flask-login flask-migrate
===
# Включим репозиторий Remi
sudo dnf config-manager --set-enabled remi

# Установим Redis
sudo dnf install redis -y

# Посмотрим все доступные пакеты Redis
sudo dnf search redis --all

# Или проверим какие репозитории доступны
sudo dnf repolist all
