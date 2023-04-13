---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var conversationMember = new AadUserConversationMember
{
	VisibleHistoryStartDateTime = DateTimeOffset.Parse("2019-04-18T23:51:43.255Z"),
	Roles = new List<String>()
	{
		"owner"
	},
	AdditionalData = new Dictionary<string, object>()
	{
		{"user@odata.bind", "https://graph.microsoft.com/beta/users/jacob@contoso.com"}
	}
};

await graphClient.Chats["{chat-id}"].Members
	.Request()
	.AddAsync(conversationMember);

```