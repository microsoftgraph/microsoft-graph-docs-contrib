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
	TenantId = "a18103d1-a6ef-4f66-ac64-e4ef42ea8681",
	AdditionalData = new Dictionary<string, object>()
	{
		{"user@odata.bind", "https://graph.microsoft.com/v1.0/users/bc3598dd-cce4-4742-ae15-173429951408"}
	}
};

await graphClient.Teams["{team-id}"].Channels["{channel-id}"].Members
	.Request()
	.AddAsync(conversationMember);

```