---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var channel = new Channel
{
	MembershipType = ChannelMembershipType.Private,
	DisplayName = "My First Private Channel",
	Description = "This is my first private channels",
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
				{"user@odata.bind", "https://graph.microsoft.com/v1.0/users('jacob@contoso.com')"}
			}
		}
	}
};

await graphClient.Teams["{team-id}"].Channels
	.Request()
	.AddAsync(channel);

```