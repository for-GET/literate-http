#!/usr/bin/env coffee

litHTTP = require '../'

[_, _] = process.argv

input = process.stdin
input.setEncoding 'utf8'
input.resume()
data = ''
input.on 'data', (chunk) ->
  data += chunk
input.on 'end', () ->
  result = JSON.stringify litHTTP(data), null, 2
  process.stdout.write result
