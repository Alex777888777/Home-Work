
c18f1c95c170421fb9f8ae3e37fed95b
sudo -u jenkins pip install flask flask_sqlalchemy flask-wtf flask-login flask-migrate
===
const express = require('express')
const morgan = require('morgan')
const cors = require('cors');

require('dotenv').config()

const initApp = require('./app')

const app = express()

// CORS ПЕРВЫМ
app.use(cors({
  origin: 'http://localhost:3000',
  credentials: true,
  methods: ['GET', 'POST', 'PUT', 'DELETE', 'OPTIONS'],
  allowedHeaders: ['Content-Type', 'Authorization']
}));

app.use(morgan(process.env.APP_ENV || 'dev'))
console.log("process.env.APP_ENV", process.env.APP_ENV);
app.use(express.json())
app.use(express.urlencoded({ extended: true }))

const PORT = process.env.PORT || 3000

initApp(app, PORT);

app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`)
})
