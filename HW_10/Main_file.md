
c18f1c95c170421fb9f8ae3e37fed95b
sudo -u jenkins pip install flask flask_sqlalchemy flask-wtf flask-login flask-migrate
===
# Установим репозиторий Remi для CentOS Stream 10
sudo dnf install https://rpms.remirepo.net/enterprise/remi-release-10.rpm -y

# Включим репозиторий Remi
sudo dnf module enable redis:remi-7.4 -y

# Установим Redis
sudo dnf install redis -y
