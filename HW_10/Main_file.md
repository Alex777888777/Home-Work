
c18f1c95c170421fb9f8ae3e37fed95b
sudo -u jenkins pip install flask flask_sqlalchemy flask-wtf flask-login flask-migrate
===
const JWT = require('jsonwebtoken')
const createError = require('http-errors')
//const client = require('./init_redis')

module.exports = {
  signAccessToken: (userId) => {
    return new Promise((resolve, reject) => {
      const payload = {}
      const secret = process.env.ACCESS_TOKEN_SECRET
      const options = {
        expiresIn: '1h',
        issuer: 'https://github.com/ehtasham89/simple-crm-nodejs-reactjs-mongodb',
        audience: userId,
      }
      JWT.sign(payload, secret, options, (err, token) => {
        if (err) {
          console.log(err.message)
          reject(createError.InternalServerError())
          return
        }
        resolve(token)
      })
    })
  },
  verifyAccessToken: type => (req, res, next) => {
    if (!req.headers['authorization']) return next(createError.Unauthorized())
    const authHeader = req.headers['authorization']
    const bearerToken = authHeader.split(' ')
    const token = bearerToken[1]
    
    JWT.verify(token, process.env.ACCESS_TOKEN_SECRET, (err, payload) => {
      if (err) {
        const message =
          err.name === 'JsonWebTokenError' ? 'Unauthorized' : err.message
        return next(createError.Unauthorized(message))
      }

      // ЗАКОММЕНТИРОВАНО: Redis проверка
      // client.GET(`auth_type_${userId}`, (err, result) => {
      //   if (err) {
      //     console.log(err.message)
      //     next(createError.InternalServerError())
      //     return
      //   }
        
      //   if (type == result) {
      //     req.payload = payload
      //     next()
      //   } else {
      //     next(createError.Unauthorized())
      //   }
      //   return
      // })

      // ВМЕСТО Redis - просто пропускаем
      req.payload = payload
      next()
    })
  },
  signRefreshToken: (userId) => {
    return new Promise((resolve, reject) => {
      const payload = {}
      const secret = process.env.REFRESH_TOKEN_SECRET
      const options = {
        expiresIn: '3h',
        issuer: 'https://github.com/ehtasham89/simple-crm-nodejs-reactjs-mongodb',
        audience: userId,
      }
      JWT.sign(payload, secret, options, (err, token) => {
        if (err) {
          console.log(err.message)
          reject(createError.InternalServerError())
        }

        // ЗАКОММЕНТИРОВАНО: Redis сохранение
        // client.SET(userId, token, 'EX', 365 * 24 * 60 * 60, (err, reply) => {
        //   if (err) {
        //     console.log(err.message)
        //     reject(createError.InternalServerError())
        //     return
        //   }
        //   resolve(token)
        // })

        // ВМЕСТО Redis - сразу возвращаем токен
        resolve(token)
      })
    })
  },
  verifyRefreshToken: (refreshToken) => {
    return new Promise((resolve, reject) => {
      JWT.verify(
        refreshToken,
        process.env.REFRESH_TOKEN_SECRET,
        (err, payload) => {
          if (err) return reject(createError.Unauthorized())
          const userId = payload.aud
          
          // ЗАКОММЕНТИРОВАНО: Redis проверка
          // client.GET(userId, (err, result) => {
          //   if (err) {
          //     console.log(err.message)
          //     reject(createError.InternalServerError())
          //     return
          //   }
          //   if (refreshToken === result) return resolve(userId)
          //   reject(createError.Unauthorized())
          // })

          // ВМЕСТО Redis - просто возвращаем userId
          resolve(userId)
        }
      )
    })
  },
  getPayload: (req, next) => {
    if (!req.headers['authorization']) return "";

    const authHeader = req.headers['authorization']
    const bearerToken = authHeader.split(' ')
    const token = bearerToken[1]
    
    return JWT.verify(token, process.env.ACCESS_TOKEN_SECRET, (err, payload) => {
      if (err) {
        const message =
          err.name === 'JsonWebTokenError' ? 'Unauthorized' : err.message
        return next(createError.Unauthorized(message))
      }

      return payload.aud;
    })
  }
}
