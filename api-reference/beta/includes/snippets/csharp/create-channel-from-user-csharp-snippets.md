---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var channel = new Channel
{
	AdditionalData = new Dictionary<string, object>()
	{
		{"@odata.type","#Microsoft.Teams.Core.channel"}
	},
	MembershipType = ChannelMembershipType.Private,
	DisplayName = "My First Private Channel",
	Description = "This is my first private channels",
	Members = new List<ConversationMember>()
	{
		new ConversationMember
		{
			AdditionalData = new Dictionary<string, object>()
			{
				{"user@odata.bind","https://graph.microsoft.com/beta/users('{user_id}')"},
				{"@odata.type","#microsoft.graph.aadUserConversationMember"}
			},
			Roles = new List<String>()
			{
				"owner"
			}
		}
	}
};

await graphClient.Teams["{group_id}"].Channels
	.Request()
	.AddAsync(channel);

```