module.exports =
  toAST: do () ->
    parse =
      'http': require './parse'
      'lithttp': require './parse'
      'curl': require './parseCurl'
      'curl-trace': require './parseCurlTrace'
      'apib': require './parseApib'
    ({input, format}) ->
      format ?= 'lithttp'
      parse[format] input

  fromAST: require('./fromAST')
