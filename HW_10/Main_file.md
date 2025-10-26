
c18f1c95c170421fb9f8ae3e37fed95b
sudo -u jenkins pip install flask flask_sqlalchemy flask-wtf flask-login flask-migrate
===
curl -X POST http://localhost:5000/api/auth/login \
  -H "Content-Type: application/json" \
  -d '{"email":"kullbro@gmail.com","password":"123456G"}' \
  -v

