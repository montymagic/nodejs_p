var util = require('util'),
    http = require('http');

http.createServer(function (req, res) {
  res.writeHead(200, {'Content-Type': 'text/plain'});
  res.write('hello, This is a normal nodejs.')
  res.end();
}).listen(8080);


/* server started */
util.puts('> 2 2 hello world running on port 8080');

