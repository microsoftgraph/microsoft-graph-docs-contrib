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
				{"user@odata.bind", "https://graph.microsoft.com/v1.0/users('7640023f-fe43-573f-9ff4-84a9efe4acd6')"}
			}
		}
	}
};

await graphClient.Teams["{team-id}"].Channels
	.Request()
	.AddAsync(channel);

```