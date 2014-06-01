module.exports =
  toAST: do () ->
    parse =
      'canonical': require './parse'
      'curl': require './parseCurl'
      'apib': require './parseApib'
    ({input, format}) ->
      format ?= 'canonical'
      parse[format] input

  fromAST: require('./fromAST')
