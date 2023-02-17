---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var pinnedMessages = await graphClient.Chats["{chat-id}"].PinnedMessages
	.Request()
	.Expand("message")
	.GetAsync();

```