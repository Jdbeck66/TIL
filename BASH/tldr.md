# Clean up executed containers

[Return Home](../README.md)

The tldr command-line tool displays simplified command utilization information, mostly including examples. This tool is not a replacement for man. The man pages are still the canonical and complete source of information for many tools. However, in some cases, man is too much. Sometimes you don't need all that information about a command; you're just trying to remember the basic options.  The tldr tool requires access to the internet to consult the tldr pages. For example, the man page for the curl command has almost 3,000 lines. In contrast, the tldr for curl is 40 lines long and looks like this:

``` Bash
$ tldr curl

# curl
  Transfers data from or to a server.
  Supports most protocols, including HTTP, FTP, and POP3.
  More information: <https://curl.haxx.se>.

- Download the contents of an URL to a file:

  curl http://example.com -o filename

- Download a file, saving the output under the filename indicated by the URL:

  curl -O http://example.com/filename

- Download a file, following [L]ocation redirects, and automatically [C]ontinuing (resuming) a previous file transfer:

  curl -O -L -C - http://example.com/filename

- Send form-encoded data (POST request of type `application/x-www-form-urlencoded`):

  curl -d 'name=bob' http://example.com/form                                                                                            
- Send a request with an extra header, using a custom HTTP method:

  curl -H 'X-My-Header: 123' -X PUT http://example.com                                                                                  
- Send data in JSON format, specifying the appropriate content-type header:

  curl -d '{"name":"bob"}' -H 'Content-Type: application/json' http://example.com/users/1234

... TRUNCATED OUTPUT
```

[tldr website](https://tldr.sh/)

Access through `tldr tldr` or `man tldr` to access via terminal.
