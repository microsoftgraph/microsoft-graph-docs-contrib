---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Chat
{
	ChatType = ChatType.OneOnOne,
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
					"user@odata.bind" , "https://graph.microsoft.com/v1.0/users('8b081ef6-4792-4def-b2c9-c363a1bf41d5')"
				},
			},
		},
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
					"user@odata.bind" , "https://graph.microsoft.com/v1.0/users('82af01c5-f7cc-4a2e-a728-3a5df21afd9d')"
				},
			},
		},
	},
};
var result = await graphClient.Chats.PostAsync(requestBody);


```