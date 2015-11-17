var express = require('express');
var app = express();
var exec = require('child_process').exec,
    child;

// respond with "hello world" when a GET request is made to the homepage
app.get('/:build', function(req, res) {
  var bid = req.params.build
  child = exec('./install.sh '+bid,
    function (error, stdout, stderr) {
      console.log('stdout: ' + stdout);
      if (error !== null) {
         res.send({ok: bid});
      } else {
        res.send({err: error})
     }
  });
});

var server = app.listen(3100)
