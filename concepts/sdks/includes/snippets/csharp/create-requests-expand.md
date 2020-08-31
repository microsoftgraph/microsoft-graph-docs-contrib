<!-- markdownlint-disable MD041 -->

```csharp
// GET https://graph.microsoft.com/v1.0/me/messages/{message-id}?$expand=attachments

string messageId = "AQMkAGUy...";
Message message = await graphClient.Me.Messages[messageId]
        .Request()
        .Expand("attachments")
        .GetAsync();
```
