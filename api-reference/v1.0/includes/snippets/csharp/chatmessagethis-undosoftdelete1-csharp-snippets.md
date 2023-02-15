---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Users["{user-id}"].Chats["{chat-id}"].Messages["{chatMessage-id}"]
	.UndoSoftDelete()
	.Request()
	.PostAsync();

```