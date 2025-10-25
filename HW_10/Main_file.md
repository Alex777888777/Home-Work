
c18f1c95c170421fb9f8ae3e37fed95b
sudo -u jenkins pip install flask flask_sqlalchemy flask-wtf flask-login flask-migrate

curl "https://install.meteor.com/?release=1.3-beta.12" | sh
docker run -it -p 3000:3000 -v $(pwd):/app jacksonpradolima/meteor:1.3
# Скачайте старый установочный скрипт
wget https://raw.githubusercontent.com/meteor/meteor/release-1.3/scripts/admin/launch-meteor

# Или попробуйте через git
git clone https://github.com/meteor/meteor.git
cd meteor
git checkout release-1.3
./install.sh

FROM registry.hub.docker.com/meteor/meteor:1.3-modules-beta.12  # явно Docker Hub
FROM ghcr.io/meteor/meteor:1.3-modules-beta.12                 # GitHub Container Registry
FROM myregistry.com/meteor:1.3-modules-beta.12                # частный реестр
export NODE_TLS_REJECT_UNAUTHORIZED=0
