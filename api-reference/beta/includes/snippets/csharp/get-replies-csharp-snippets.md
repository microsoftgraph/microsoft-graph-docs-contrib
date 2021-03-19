---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var replies = await graphClient.Chats["{chat-id}"].Messages["{chatMessage-id}"].Replies
	.Request()
	.GetAsync();

```