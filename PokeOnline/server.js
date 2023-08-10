const express=require('express');
const app=express();
const port=3000;
var curr="GUEST";
var ad=false;
app.use(express.json());       
app.use(express.urlencoded({extended: true})); 
const bcrypt = require("bcrypt")
const mysql = require('mysql');
const fs = require('fs');

const filePath = './views/home.html'; 
const { JSDOM } = require('jsdom');


const htmlContent = fs.readFileSync(filePath, 'utf-8');
const { window } = new JSDOM(htmlContent, {
  resources: 'usable', 
});

const connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: '123',
  database: 'pokemon'
});


connection.connect((err) => {
  if (err) throw err;
  console.log('Connected!');
});



app.get('/',(req,res)=>{
    app.use(express.static('views'));
    res.sendFile(__dirname+'/views/login.html')
})

app.get('/register.html',(req,res)=>{
    res.sendFile(__dirname+'/views/register.html')
})


app.get('/home.html',(req,res)=>{
  console.log(window.document.getElementById("username").innerText);
})


app.post('/home.html',(req,res)=>{
  const ID=req.body.trainerID;
  const psw=req.body.psw;
  
  var sql="SELECT * FROM ketchup WHERE relish='"+ID+"';";
  
  connection.query(sql, function (err, result) {
    console.log(result);
    if(result=="" ||result===undefined)
    {
      console.log("User Not Found");
    }

    else{
          
          
            var data=JSON.parse(JSON.stringify(result));
            var psw2=data[0].mayo;
            var sql2="SELECT * FROM narra WHERE Hearts='"+data[0].relish+"';";

            console.log(psw);
            console.log(psw2);
            bcrypt.compare(psw,psw2).then(function(result2){
              console.log(result2)
              if(result2==true)
              {
              curr=ID;
              
              window.document.getElementById("username").textContent=ID;
              const updatedHtml = window.document.documentElement.outerHTML;
              fs.writeFileSync('./views/updated.html', updatedHtml);

              res.sendFile(__dirname+'/views/updated.html');
              console.log("username: "+window.document.getElementById("username").textContent);

              }
              else
              console.log("WRONG PASSWORD");
            })
          
    }

    if(curr!="GUEST")
    {
      connection.query(sql2,function (err, result) {
        
      }
      )
    }
  })

})

app.post("/login.html",(req,res)=>{
const user=req.body.full_name;
const pass1=req.body.psw;
const pass2=req.body.psw2;
const num=req.body.phone;
const mail=req.body.email;
const image=req.body.
if(pass1==pass2)
{
  bcrypt.genSalt(10, (err, salt) => {
    bcrypt.hash(pass1, salt, function(err, hash) {
       
          var sql2="SELECT * FROM ketchup WHERE relish='"+user+"';";
          console.log(sql2);
          connection.query(sql2, function (err, result) {
            console.log("Result!!!: "+JSON.stringify(result));
          if(result=="" ||result===undefined)
          {
            var sql3 = "INSERT INTO ketchup (relish,mayo,soysauce,vinegar) VALUES ('" +user+"','"+hash+"','"+mail+"','"+num+"');";
            connection.query(sql3, function (err, result) {
              if (err)
                throw err;
              console.log("1 record inserted");
              res.sendFile(__dirname+'/views/login.html');
            });
          }

          else{
          console.log("user is there already!");}
 
        })
       
       
    });
})
}

})

app.listen(port,()=>{
    console.log("App listening on port http://localhost:3000")
})

