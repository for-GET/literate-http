# Literate HTTP [![Build Status][2]][1]

Parse HTTP transactions into a JSON AST and back, like

[HTTP](./README.http.md),
or [litHTTP (simplified HTTP)](./README.lithttp.md),
or [curl](./README.curl.md),
or [curl-trace](./README.curl-trace.md),
or [Apiary blueprint](./README.apib.md)

into/from

or [JSON AST](./README.json)


## Install

```shell
npm install lithttp
```

## CLI Usage

* `lithttp-to-ast` parses into the JSON AST
* `lithttp-from-ast` parses from the JSON AST

```shell
curl -s https://raw.githubusercontent.com/for-GET/literate-http/master/README.http.md | \
  lithttp-to-ast

curl -s https://raw.githubusercontent.com/for-GET/literate-http/master/README.lithttp.md | \
  lithttp-to-ast

curl -s https://raw.githubusercontent.com/for-GET/literate-http/master/README.curl.md | \
  lithttp-to-ast curl

curl -s https://raw.githubusercontent.com/for-GET/literate-http/master/README.curl-trace.md | \
  lithttp-to-ast curl-trace

curl -s https://raw.githubusercontent.com/for-GET/literate-http/master/README.apib.md | \
  lithttp-to-ast apib
```

## JS Usage

TBD (to be documented; see [index](./src/index.coffee))

## License

[UNLICENSE](LICENSE)


  [1]: https://travis-ci.org/for-GET/literate-http
  [2]: https://travis-ci.org/for-GET/literate-http.png
