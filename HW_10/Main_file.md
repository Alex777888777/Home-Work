
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
