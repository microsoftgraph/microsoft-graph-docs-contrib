---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var channel = new Channel
{
	DisplayName = "My First Shared Channel",
	Description = "This is my first shared channel",
	MembershipType = ChannelMembershipType.Shared,
	Members = new ChannelMembersCollectionPage()
	{
		new AadUserConversationMember
		{
			Roles = new List<String>()
			{
				"owner"
			},
			AdditionalData = new Dictionary<string, object>()
			{
				{"user@odata.bind", "https://graph.microsoft.com/beta/users('7640023f-fe43-gv3f-9gg4-84a9efe4acd6')"}
			}
		}
	}
};

await graphClient.Teams["{team-id}"].Channels
	.Request()
	.AddAsync(channel);

```