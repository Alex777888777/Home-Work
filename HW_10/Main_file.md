
c18f1c95c170421fb9f8ae3e37fed95b
sudo -u jenkins pip install flask flask_sqlalchemy flask-wtf flask-login flask-migrate
---
https://github.com/ehtasham89/simple-crm-nodejs-reactjs-mongodb.git
export NODE_OPTIONS="--openssl-legacy-provider"
---
[mongodb-enterprise-8.2]
name=MongoDB Enterprise Repository
baseurl=https://repo.mongodb.com/yum/redhat/9/mongodb-enterprise/8.2/$basearch/
gpgcheck=1
enabled=1
gpgkey=https://pgp.mongodb.com/server-8.0.asc
---
sudo yum install -y mongodb-enterprise-8.2.0 mongodb-enterprise-database-8.2.0 mongodb-enterprise-server-8.2.0 mongodb-mongosh mongodb-enterprise-mongos-8.2.0 mongodb-enterprise-tools-8.2.0
