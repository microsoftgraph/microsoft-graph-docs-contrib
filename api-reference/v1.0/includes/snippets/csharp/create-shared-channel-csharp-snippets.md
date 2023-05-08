---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Channel
{
	DisplayName = "My First Shared Channel",
	Description = "This is my first shared channel",
	MembershipType = ChannelMembershipType.Shared,
	Members = new List<ConversationMember>
	{
		new ConversationMember
		{
			OdataType = "#microsoft.graph.aadUserConversationMember",
			Roles = new List<string>
			{
				"owner",
			},
			AdditionalData = new Dictionary<string, object>
			{
				{
					"user@odata.bind" , "https://graph.microsoft.com/v1.0/users('7640023f-fe43-573f-9ff4-84a9efe4acd6')"
				},
			},
		},
	},
};
var result = await graphClient.Teams["{team-id}"].Channels.PostAsync(requestBody);


```