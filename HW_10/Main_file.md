
c18f1c95c170421fb9f8ae3e37fed95b
sudo -u jenkins pip install flask flask_sqlalchemy flask-wtf flask-login flask-migrate
===
https://github.com/idurar/idurar-erp-crm.git
https://buboed-alden-pockier.ngrok-free.dev


version: "2"
authtoken: твой_токен  # если есть
tunnels:
  frontend:
    addr: 3000
    proto: http
    
  backend:
    addr: 8888  
    proto: http
