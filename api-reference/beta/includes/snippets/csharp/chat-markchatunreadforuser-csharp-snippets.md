---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var user = new TeamworkUserIdentity
{
	Id = "d864e79f-a516-4d0f-9fee-0eeb4d61fdc2",
	AdditionalData = new Dictionary<string, object>()
	{
		{"tenantId", "2a690434-97d9-4eed-83a6-f5f13600199a"}
	}
};

var lastMessageReadDateTime = DateTimeOffset.Parse("2021-05-27T22:13:01.577Z");

await graphClient.Chats["{chat-id}"]
	.MarkChatUnreadForUser(user,null,lastMessageReadDateTime)
	.Request()
	.PostAsync();

```