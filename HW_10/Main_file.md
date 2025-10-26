
c18f1c95c170421fb9f8ae3e37fed95b
sudo -u jenkins pip install flask flask_sqlalchemy flask-wtf flask-login flask-migrate
---
https://github.com/ehtasham89/simple-crm-nodejs-reactjs-mongodb.git
export NODE_OPTIONS="--openssl-legacy-provider"
---
MONGODB_URL=mongodb://localhost:27017/simple_crm
DB_NAME=simple_crm
export NODE_OPTIONS="--openssl-legacy-provider"
--
db.users.insertOne({
  name: "Super Admin",
  email: "admin@example.com",
  password: "$2b$10$hashed_password_here", // Нужно сгенерировать хеш
  role: "super_admin",
  createdAt: new Date(),
  updatedAt: new Date()
})
===
find Auth -name "*.js" -o -name "*.jsx" | xargs grep -l "register\|createUser"
PORT=5000
APP_ENV=dev
MONGODB_URI=mongodb://localhost:27017/simple_crm
DB_NAME=simple_crm
ACCESS_TOKEN_SECRET=48f234b26ecdd84220f1a8a85d13496874041d6b1eab09c4506ae152c2bebd0a
REFRESH_TOKEN_SECRET=fabff2fa3833326be2e4170e1ad3e5c1d4639752197bc5175dfb75c51f737dbb
