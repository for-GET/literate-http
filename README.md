# Literate HTTP [![Build Status][2]][1]

Parse HTTP transactions into a JSON AST, like

[HTTP](./README.http.md), or [curl](./README.curl.md), or [Apiary blueprint](./README.apib.md)

into

```json
[
  {
    "__type": "litHTTP_transaction",
    "request": {
      "__type": "litHTTP_request",
      "method": "GET",
      "target": {
        "__type": "request_target",
        "value": "/"
      },
      "HTTP_version": "HTTP/1.1",
      "headers": [
        {
          "name": "User-Agent",
          "value": "curl/7.30.0"
        },
        {
          "name": "Accept",
          "value": "*/*"
        }
      ],
      "body": null
    },
    "response": {
      "__type": "litHTTP_response",
      "HTTP_version": "HTTP/1.1",
      "status_code": 200,
      "reason_phrase": "OK",
      "headers": [
        {
          "name": "Content-Type",
          "value": "text/plain"
        }
      ],
      "body": "foo"
    }
  }
]
```


## Install

```shell
npm install lithttp
```

## Usage

```shell
curl -s https://raw.githubusercontent.com/for-GET/literate-http/master/README.http.md | lithttp-to-ast
curl -s https://raw.githubusercontent.com/for-GET/literate-http/master/README.curl.md | lithttp-to-ast curl
curl -s https://raw.githubusercontent.com/for-GET/literate-http/master/README.apib.md | lithttp-to-ast apib
```

## License

[UNLICENSE](LICENSE)


  [1]: https://travis-ci.org/for-GET/literate-http
  [2]: https://travis-ci.org/for-GET/literate-http.png
