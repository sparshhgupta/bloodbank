const express = require('express')
const bodyParser = require('body-parser')
const app = express().use(express.static(__dirname + '/'))

var http = require('http').Server(app)
const db = require('./queries')
const port = 3002

app.use(bodyParser.json())
app.use(
  bodyParser.urlencoded({
    extended: false,
  })
)
//app.use(express.static(path.join(__dirname,'./public')));

app.get('/', function(req,res){
  res.sendFile(path.join(__dirname,'/index.html'));
});

//app.get('/users', db.getUsers)
app.get('/view', db.getUsers)
app.get('/usersid/:id', db.getUserById)
//app.get('/view?id=id', db.getUserById)
app.post('/add', db.createUser)
app.put('/users/:id', db.updateUser)
app.delete('/users/:id', db.deleteUser)

app.listen(port, () => {
  console.log(`App running on port ${port}.`)
})