{exec} = require 'child_process'
task 'build', 'Build project from src/*.coffee to lib/bin/*.js', ->
  exec 'coffee --compile --join jquery-addressparser.js --output lib/bin/ src/', (err, stdout, stderr) ->
    throw err if err
    console.log stdout + stderr
    exec 'uglifyjs lib/bin/jquery-addressparser.js -o lib/bin/jquery-addressparser.min.js'
task 'test', 'Build test files', ->
  exec 'coffee --compile --output lib/spec/ spec/', (err, stdout, stderr) ->
    throw err if err
    console.log stdout + stderr


