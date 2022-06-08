---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var getAllMessages = await graphClient.Users["{user-id}"].Chats
	.GetAllMessages()
	.Request()
	.Top(2)
	.GetAsync();

```