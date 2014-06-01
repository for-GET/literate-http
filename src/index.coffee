module.exports =
  toAST: do () ->
    parse =
      'canonical': require './parse'
      'curl': require './parseCurl'
      'apiary': require './parseApiary'
    ({input, format}) ->
      format ?= 'canonical'
      parse[format] input

  fromAST: require('./fromAST')
