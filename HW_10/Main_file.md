
c18f1c95c170421fb9f8ae3e37fed95b
sudo -u jenkins pip install flask flask_sqlalchemy flask-wtf flask-login flask-migrate

meteor create --release 1.3-beta.12 myapp

export NODE_TLS_REJECT_UNAUTHORIZED=0
curl https://install.meteor.com/ | sh
    sudo npm install -g meteor --unsafe-perm
    curl -L https://packages.meteor.com/bootstrap-link?release=1.3-beta.12 | sh
export PATH=$PATH:$(dirname $METEOR_PATH)


METEOR_PATH=$(find /usr -name "meteor" -type f 2>/dev/null | head -1)
echo $METEOR_PATH
npm install --legacy-peer-deps

# Попробовать самые старые версии
npm install react-s-alert@1.0.0 --legacy-peer-deps
# или
npm install react-s-alert@0.8.0 --legacy-peer-deps
