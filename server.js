var express = require('express'),
    app = express(),
    port = 3001;

app.get('/', function(req,res){
  res.sendFile('views/index.html' , { root : __dirname});
});

app.listen(port,function(){
  console.log("App listening on port: %s",port);
});
