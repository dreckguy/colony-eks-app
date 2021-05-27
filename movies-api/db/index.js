//const {COLONY_DOMAIN_NAME} = process.env

const mongoose = require('mongoose')

mongoose
    .connect(`mongodb://db:27017/cinema`, { useNewUrlParser: true,server: {socketOptions: {socketTimeoutMS: 10000}}})
    .catch(e => {
        console.error('Connection error', e.message)
    })

const db = mongoose.connection

module.exports = db
