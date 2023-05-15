---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

await graphClient.Users["{user-id}"].Chats["{chat-id}"].Messages["{chatMessage-id}"].UndoSoftDelete.PostAsync();


```