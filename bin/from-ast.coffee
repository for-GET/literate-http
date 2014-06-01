#!/usr/bin/env coffee

litHTTP = require '../'

[_, _, format] = process.argv

input = process.stdin
input.setEncoding 'utf8'
input.resume()
data = ''
input.on 'data', (chunk) ->
  data += chunk
input.on 'end', () ->
  result = litHTTP.fromAST {AST: JSON.parse(data), format}
  process.stdout.write result
