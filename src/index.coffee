module.exports =
  toAST: do () ->
    parse = require './parse'
    ({input}) ->
      parse input

  fromAST: require('./fromAST')
