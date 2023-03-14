<!-- markdownlint-disable MD041 -->

```csharp
// DELETE https://graph.microsoft.com/v1.0/me/messages/{message-id}

string messageId = "AQMkAGUy...";
await graphClient.Me.Messages[messageId]
    .DeleteAsync();
```
