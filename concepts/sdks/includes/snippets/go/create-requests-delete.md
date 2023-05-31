<!-- markdownlint-disable MD041 -->

```go
// DELETE https://graph.microsoft.com/v1.0/me/messages/{message-id}

messageId := "AQMkAGUy..."
err := client.Me().Messages().ByMessageId(messageId).Delete(context.Background(), nil)
```
