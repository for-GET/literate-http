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
  AST = litHTTP.toAST {input: data, format}
  result = JSON.stringify AST, null, 2
  process.stdout.write result
