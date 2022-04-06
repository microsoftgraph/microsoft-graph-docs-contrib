<!-- markdownlint-disable MD041 -->

```go
// DELETE https://graph.microsoft.com/v1.0/me/messages/{message-id}

messageId := "AQMkAGUy..."
err := client.Me().MessagesById(messageId).Delete(nil)
```
