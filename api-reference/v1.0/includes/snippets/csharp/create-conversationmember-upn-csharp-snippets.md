---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var conversationMember = new AadUserConversationMember
{
	Roles = new List<String>()
	{
		"owner"
	},
	AdditionalData = new Dictionary<string, object>()
	{
		{"user@odata.bind", "https://graph.microsoft.com/v1.0/users('jacob@contoso.com')"}
	}
};

await graphClient.Teams["{team-id}"].Members
	.Request()
	.AddAsync(conversationMember);

```