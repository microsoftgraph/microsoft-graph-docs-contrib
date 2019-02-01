# HTTP Requests and Responses

## Guzzle

Graph utilizes [Guzzle](https://github.com/guzzle/guzzle) to send requests and receive responses. This is largely due to the built-in support for asynchronous calls. Most request errors that you encounter while debugging your app will have bubbled up from GuzzleHttp.

## Dependency injection on execute()

If you prefer, you may call execute() and executeAsync() with your own HTTP client. The function will attempt to create a new request with the given handler. Handlers that have adopted PSR-7 should play nicely, but this functionality hasn't been tested. If you are interested in adding the ability to swap clients through the SDK, feel free to submit a PR.