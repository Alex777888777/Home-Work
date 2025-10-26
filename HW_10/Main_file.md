
c18f1c95c170421fb9f8ae3e37fed95b
sudo -u jenkins pip install flask flask_sqlalchemy flask-wtf flask-login flask-migrate
===
# Обновим EPEL (если нужно)
sudo dnf update epel-release -y

# Поищем Redis в EPEL
sudo dnf search redis --enablerepo=epel

# Если найдет, установим
sudo dnf install redis --enablerepo=epel -y
