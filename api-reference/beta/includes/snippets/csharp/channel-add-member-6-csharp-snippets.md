---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var conversationMember = new AadUserConversationMember
{
	Roles = new List<String>()
	{
	},
	AdditionalData = new Dictionary<string, object>()
	{
		{"user@odata.bind", "https://graph.microsoft.com/beta/users('jacob@contoso.com')"}
	}
};

await graphClient.Teams["{team-id}"].Channels["{channel-id}"].Members
	.Request()
	.AddAsync(conversationMember);

```