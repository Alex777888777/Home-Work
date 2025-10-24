
c18f1c95c170421fb9f8ae3e37fed95b
sudo -u jenkins pip install flask flask_sqlalchemy flask-wtf flask-login flask-migrate

# Установите wget если нет
sudo yum install -y wget

# Создайте директорию для Meteor
mkdir -p ~/.meteor
cd ~/.meteor

# Скачайте бинарный файл Meteor 1.3.5.1 для 64-bit Linux
wget https://static-meteor.netdna-ssl.com/packages-bootstrap/1.3.5.1/meteor-bootstrap-os.linux.x86_64.tar.gz

# Распакуйте архив
tar -xzf meteor-bootstrap-os.linux.x86_64.tar.gz

# Удалите архив (опционально)
rm meteor-bootstrap-os.linux.x86_64.tar.gz

# Добавьте Meteor в PATH
echo 'export PATH="$HOME/.meteor:$PATH"' >> ~/.bashrc
source ~/.bashrc
