# curl trace syntax

```curl-trace
== Info: About to connect() to httpbin.org port 80 (#0)
== Info:   Trying 54.225.138.124...
== Info: connected
== Info: Connected to httpbin.org (54.225.138.124) port 80 (#0)
=> Send header, 149 bytes (0x95)
0000: 47 45 54 20 2f 68 65 61 64 65 72 73 20 48 54 54 GET /headers HTT
0010: 50 2f 31 2e 31 0d 0a 55 73 65 72 2d 41 67 65 6e P/1.1..User-Agen
0020: 74 3a 20 63 75 72 6c 2f 37 2e 32 34 2e 30 20 28 t: curl/7.24.0 (
0030: 78 38 36 5f 36 34 2d 61 70 70 6c 65 2d 64 61 72 x86_64-apple-dar
0040: 77 69 6e 31 32 2e 30 29 20 6c 69 62 63 75 72 6c win12.0) libcurl
0050: 2f 37 2e 32 34 2e 30 20 4f 70 65 6e 53 53 4c 2f /7.24.0 OpenSSL/
0060: 30 2e 39 2e 38 78 20 7a 6c 69 62 2f 31 2e 32 2e 0.9.8x zlib/1.2.
0070: 35 0d 0a 48 6f 73 74 3a 20 68 74 74 70 62 69 6e 5..Host: httpbin
0080: 2e 6f 72 67 0d 0a 41 63 63 65 70 74 3a 20 2a 2f .org..Accept: */
0090: 2a 0d 0a 0d 0a                                  *....
<= Recv header, 17 bytes (0x11)
0000: 48 54 54 50 2f 31 2e 31 20 32 30 30 20 4f 4b 0d HTTP/1.1 200 OK.
0010: 0a                                              .
<= Recv header, 32 bytes (0x20)
0000: 41 63 63 65 73 73 2d 43 6f 6e 74 72 6f 6c 2d 41 Access-Control-A
0010: 6c 6c 6f 77 2d 4f 72 69 67 69 6e 3a 20 2a 0d 0a llow-Origin: *..
<= Recv header, 32 bytes (0x20)
0000: 43 6f 6e 74 65 6e 74 2d 54 79 70 65 3a 20 61 70 Content-Type: ap
0010: 70 6c 69 63 61 74 69 6f 6e 2f 6a 73 6f 6e 0d 0a plication/json..
<= Recv header, 37 bytes (0x25)
0000: 44 61 74 65 3a 20 53 75 6e 2c 20 32 31 20 4a 75 Date: Sun, 21 Ju
0010: 6c 20 32 30 31 33 20 31 33 3a 30 39 3a 35 35 20 l 2013 13:09:55
0020: 47 4d 54 0d 0a                                  GMT..
<= Recv header, 25 bytes (0x19)
0000: 53 65 72 76 65 72 3a 20 67 75 6e 69 63 6f 72 6e Server: gunicorn
0010: 2f 30 2e 31 37 2e 34 0d 0a                      /0.17.4..
<= Recv header, 21 bytes (0x15)
0000: 43 6f 6e 74 65 6e 74 2d 4c 65 6e 67 74 68 3a 20 Content-Length:
0010: 31 39 36 0d 0a                                  196..
<= Recv header, 24 bytes (0x18)
0000: 43 6f 6e 6e 65 63 74 69 6f 6e 3a 20 6b 65 65 70 Connection: keep
0010: 2d 61 6c 69 76 65 0d 0a                         -alive..
<= Recv header, 2 bytes (0x2)
0000: 0d 0a                                           ..
<= Recv data, 196 bytes (0xc4)
0000: 7b 0a 20 20 22 68 65 61 64 65 72 73 22 3a 20 7b {.  "headers": {
0010: 0a 20 20 20 20 22 55 73 65 72 2d 41 67 65 6e 74 .    "User-Agent
0020: 22 3a 20 22 63 75 72 6c 2f 37 2e 32 34 2e 30 20 ": "curl/7.24.0
0030: 28 78 38 36 5f 36 34 2d 61 70 70 6c 65 2d 64 61 (x86_64-apple-da
0040: 72 77 69 6e 31 32 2e 30 29 20 6c 69 62 63 75 72 rwin12.0) libcur
0050: 6c 2f 37 2e 32 34 2e 30 20 4f 70 65 6e 53 53 4c l/7.24.0 OpenSSL
0060: 2f 30 2e 39 2e 38 78 20 7a 6c 69 62 2f 31 2e 32 /0.9.8x zlib/1.2
0070: 2e 35 22 2c 0a 20 20 20 20 22 48 6f 73 74 22 3a .5",.    "Host":
0080: 20 22 68 74 74 70 62 69 6e 2e 6f 72 67 22 2c 0a  "httpbin.org",.
0090: 20 20 20 20 22 41 63 63 65 70 74 22 3a 20 22 2a     "Accept": "*
00a0: 2f 2a 22 2c 0a 20 20 20 20 22 43 6f 6e 6e 65 63 /*",.    "Connec
00b0: 74 69 6f 6e 22 3a 20 22 63 6c 6f 73 65 22 0a 20 tion": "close".
00c0: 20 7d 0a 7d                                      }.}
== Info: Connection #0 to host httpbin.org left intact
== Info: Closing connection #0
```
