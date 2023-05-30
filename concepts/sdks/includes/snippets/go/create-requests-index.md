<!-- markdownlint-disable MD041 -->

```go
// GET https://graph.microsoft.com/v1.0/me/messages/{message-id}

messageId := "AQMkAGUy.."
result, err = client.Me().Messages().ByMessageId(messageId).Get(context.Background(), nil)
```
