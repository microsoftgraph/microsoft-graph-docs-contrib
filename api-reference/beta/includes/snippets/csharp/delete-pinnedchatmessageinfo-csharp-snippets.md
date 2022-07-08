---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Chats["{chat-id}"].PinnedMessages["{pinnedChatMessageInfo-id}"]
	.Request()
	.DeleteAsync();

```