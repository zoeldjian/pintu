const express = require('express')
const app = express()
const {greeting} = require('./client')

app.get('/', (req,res) => res.send('We will have a good day!'))
app.get('/ping', (req,res) => res.send('Pong!'))
app.get('/devops', (req,res) => res.send('Hi, devops mate!'))
app.get('/hello/:name', (req,res) => {
    res.json({message:greeting(req.params.name)})
})
module.exports = app