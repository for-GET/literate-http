exports = module.exports = ({title, AST, format}) ->
  title ?= 'Literate HTTP'
  format ?= 'canonical'
  format = 'canonical'  unless format in [
    'canonical'
    'github'
    'curl'
    'apiary'
  ]
  result = (exports.transaction {AST: transaction, format}  for transaction in AST)
  switch format
    when 'canonical', 'curl', 'apiary'
      result = result.join "\n\n\n"
    when 'github'
      result = result.join "\n```\n\n\n```http\n"
  result = result.replace /[ \t]+\n/, "\n"
  switch format
    when 'canonical', 'curl' then "#{result}\n"
    when 'github' then "\# #{title}\n\n```http\n#{result}\n```\n"
    when 'apiary' then "--- #{title} ---\n\n#{result}\n"

exports.transaction = ({AST, format}) ->
  request = exports.request {AST: AST.request, format}
  response = exports.response {AST: AST.response, format}

  switch format
    when 'canonical', 'curl', 'apiary'
      """
      #{request}
      #{response}
      """
    when 'github'
      """
      #{request}
      ```

      ```http
      #{response}
      """

exports.request = ({AST, format}) ->
  {method, target, HTTP_version, headers, body} = AST
  method = AST.method
  target = target.value
  request_line = exports.request_line {method, target, HTTP_version, format}
  headers = exports.headers {type: 'request', AST: headers, format}
  if body?
    switch format
      when 'canonical', 'github', 'curl'
        body = "\n" + exports.request_mark({format}).trim() + "\n" + body
      when 'apiary'
        body = "\n" + body
  body ?= ''

  """
  #{request_line}
  #{headers}#{body}
  """

exports.request_mark = ({format, isRequestLine}) ->
  switch format
    when 'canonical' then ''
    when 'github' then ''
    when 'curl' then '> '
    when 'apiary'
      if isRequestLine then '' else '> '

exports.request_line = ({method, target, HTTP_version, format}) ->
  request_line_mark = exports.request_mark {format, isRequestLine: true}
  HTTP_version ?= 'HTTP/1.1'
  switch format
    when 'canonical', 'apiary' then "#{request_line_mark}#{method} #{target}"
    when 'github', 'curl' then "#{request_line_mark}#{method} #{target} #{HTTP_version}"

exports.response = ({AST, format}) ->
  {HTTP_version, status_code, reason_phrase, headers, body} = AST
  status_line = exports.status_line {HTTP_version, status_code, reason_phrase, format}
  headers = exports.headers {type: 'response', AST: headers, format}
  if body?
    switch format
      when 'canonical', 'github', 'curl'
        body = "\n" + exports.response_mark({format}).trim() + "\n" + body
      when 'apiary'
        body = "\n" + body
  body ?= ''

  """
  #{status_line}
  #{headers}#{body}
  """

exports.status_line = ({HTTP_version, status_code, reason_phrase, format}) ->
  status_line_mark = exports.response_mark {format}
  HTTP_version ?= 'HTTP/1.1'
  reason_phrase ?= '' # FIXME
  switch format
    when 'canonical', 'apiary' then "#{status_line_mark}#{status_code}"
    when 'github', 'curl' then "#{status_line_mark}#{HTTP_version} #{status_code} #{reason_phrase}"


exports.response_mark = ({format}) ->
  switch format
    when 'canonical' then ''
    when 'github' then ''
    when 'curl' then '< '
    when 'apiary' then '< '

exports.headers = ({type, AST, format}) ->
  switch type
    when 'request' then mark = exports.request_mark {format}
    when 'response' then mark = exports.response_mark {format}
  switch format
    when 'canonical', 'github', 'curl', 'apiary'
      result = ("#{mark}#{header.name}: #{header.value}"  for header in AST)
      result = result.join "\n"
      result
