
c18f1c95c170421fb9f8ae3e37fed95b
sudo -u jenkins pip install flask flask_sqlalchemy flask-wtf flask-login flask-migrate
===
API REQUEST DATA: 
Object { url: "/auth/login", method: "post", data: '{"email":"kullbro@gmail.com","password":"123456G"}', headers: {…}, baseURL: "http://localhost:5000/api", transformRequest: (1) […], transformResponse: (1) […], timeout: 0, adapter: xhrAdapter(config)
, xsrfCookieName: "XSRF-TOKEN", … }
BaseApiClient.js:15:1
 action USER_LOGOUT @ 16:12:24.009 redux-logger.js:1:1
 prev state 
Object { auth: {…}, user: {…}, leads: {…} }
redux-logger.js:1:1
 action     
Object { type: "USER_LOGOUT" }
redux-logger.js:1:1
 next state 
Object { auth: {…}, user: {…}, leads: {…} }
redux-logger.js:1:1
 action AUTH_REQUEST_SEND @ 16:12:24.014 redux-logger.js:1:1
 prev state 
Object { auth: {…}, user: {…}, leads: {…} }
redux-logger.js:1:1
 action     
Object { type: "AUTH_REQUEST_SEND" }
redux-logger.js:1:1
 next state 
Object { auth: {…}, user: {…}, leads: {…} }
redux-logger.js:1:1
API REQUEST DATA: 
Object { url: "/auth/login", method: "post", data: {…}, headers: {…}, baseURL: "http://localhost:5000/api", transformRequest: (1) […], transformResponse: (1) […], timeout: 0, adapter: xhrAdapter(config), xsrfCookieName: "XSRF-TOKEN", … }
