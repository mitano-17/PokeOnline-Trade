const express=require('express');
const rateLimit = require ('express-rate-limit');
const app=express();
const port=3000;
app.use(express.json());       
app.use(express.urlencoded({extended: true})); 
const bcrypt = require("bcrypt")
const mysql = require('mysql');
const loginLimit = rateLimit({
  windowMs: 1*60*1000, //1 Minute
  max: 5, //5 Attempts
  message: 'You failed to login too many times! Please try again after 1 minute',
  standardHeaders: true,
  legacyHeaders: false,
})

app.use("/login.html", loginLimit)

// NOTICE: MAKE SURE TO CHANGE ACCDG TO YOUR SYSTEM
const connection = mysql.createConnection({
  host: 'localhost:3306',
  user: 'pokeuser',
  password: '1234',
  database: 'pokemon'
});

/*connection.connect((err) => {
  if (err) throw err;
  console.log('Connected!');
});

use to communicate with server*/

app.get('/',(req,res)=>{
    app.use(express.static('views'));
    res.sendFile(__dirname+'/views/login.html')
})

app.get('/register',(req,res)=>{
 
    res.sendFile(__dirname+'/views/register.html')
})

app.get('/home',(req,res)=>{
 
  res.sendFile(__dirname+'/views/home.html')
})

app.post("/login.html",(req,res)=>{
const user=req.body.full_name;
const pass1=req.body.psw;
const pass2=req.body.psw2;
const num=req.body.phone;
const mail=req.body.email;
if(pass1==pass2)
{
  bcrypt.genSalt(10, (err, salt) => {
    bcrypt.hash(pass1, salt, function(err, hash) {
        connection.connect(function(err){
          if (err) 
            throw err;
          connection.query("SELECT * FROM ketchup WHERE relish="+user+";", function (err, result, fields) {
            console.log(result);
          if(result===undefined)
          {
            var sql = "INSERT INTO ketchup (relish,mayo,soysauce,vinegar) VALUES ('" +user+"','"+hash+"','"+mail+"','"+num+"');";
            connection.query(sql, function (err, result) {
              if (err)
                throw err;
              console.log("1 record inserted");
            });
          }

          else
          console.log("user is there already!");
  });
        })
       
    });
})
}
})

app.listen(port,()=>{
    console.log("App listening on port http://localhost:3000")
})

