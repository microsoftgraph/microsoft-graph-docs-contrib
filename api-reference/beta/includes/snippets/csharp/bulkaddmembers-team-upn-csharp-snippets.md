---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var values = new List<ConversationMember>()
{
	new AadUserConversationMember
	{
		Roles = new List<String>()
		{
		},
		AdditionalData = new Dictionary<string, object>()
		{
			{"user@odata.bind", "https://graph.microsoft.com/beta/users('jacob@contoso.com')"}
		}
	},
	new AadUserConversationMember
	{
		Roles = new List<String>()
		{
			"owner"
		},
		AdditionalData = new Dictionary<string, object>()
		{
			{"user@odata.bind", "https://graph.microsoft.com/beta/users('alex@contoso.com')"}
		}
	}
};

await graphClient.Teams["{team-id}"].Members
	.Add(values)
	.Request()
	.PostAsync();

```