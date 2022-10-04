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
		{"user@odata.bind", "https://graph.microsoft.com/v1.0/users/24b3819b-4e1d-4f3e-86bd-e42b54d0b2b4"}
	}
};

await graphClient.Teams["{team-id}"].Channels["{channel-id}"].Members
	.Request()
	.AddAsync(conversationMember);

```