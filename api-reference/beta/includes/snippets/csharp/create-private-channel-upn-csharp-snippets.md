---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Channel
{
	OdataType = "#Microsoft.Graph.channel",
	MembershipType = ChannelMembershipType.Private,
	DisplayName = "My First Private Channel",
	Description = "This is my first private channels",
	Members = new List<ConversationMember>
	{
		new AadUserConversationMember
		{
			OdataType = "#microsoft.graph.aadUserConversationMember",
			Roles = new List<string>
			{
				"owner",
			},
			AdditionalData = new Dictionary<string, object>
			{
				{
					"user@odata.bind" , "https://graph.microsoft.com/beta/users('jacob@contoso.com')"
				},
			},
		},
	},
};
var result = await graphClient.Teams["{team-id}"].Channels.PostAsync(requestBody);


```