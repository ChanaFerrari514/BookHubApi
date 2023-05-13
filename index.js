require('dotenv').config()
const express = require('express')
const cookieParser = require('cookie-parser')
const db = require('./configs/db')
const errors = require('./misc/errors')
const morgan = require ('morgan')

const app = express()

app.use(express.json())
app.use(cookieParser())
app.use(morgan('dev'))

const routes = require('./routes')

app.use(routes(db))

app.use((req, res, next) => {
    next(errors[404])
    })
// el objecto asociado    

app.use(({ statusCode, errors }, req, res, next) => {
    res.status(statusCode).json({
        success: false,
        message: errors.message,
    })
})

app.listen(
    process.env.PORT, 
    () => console.info(`> listening at: ${process.env.PORT}`))

    
    