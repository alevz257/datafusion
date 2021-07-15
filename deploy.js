/**
 * @fileoverview Description of this file.
 */

'use strict';

const fs = require('fs');

let rawdata = fs.readFileSync('pipeline.json');
let student = JSON.parse(rawdata);
console.log(student);

let test = JSON.stringify(student);
console.log("--");
console.log(test);


/*
const https = require('https')

const data = new TextEncoder().encode(
      JSON.stringify({
            todo: 'Buy the milk 🍼'
                  })
    )

const options = {
    hostname: 'whatever.com',
      port: 443,
        path: '/todos',
          method: 'POST',
            headers: {
                  'Content-Type': 'application/json',
                      'Content-Length': data.length
                            }
}

const req = https.request(options, res => {
    console.log(`statusCode: ${res.statusCode}`)

          res.on('data', d => {
                process.stdout.write(d)
                      })
})

req.on('error', error => {
    console.error(error)
})

req.write(data)
  req.end()

*/
