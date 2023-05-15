---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Chat
{
	ChatType = ChatType.Group,
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
					"user@odata.bind" , "https://graph.microsoft.com/v1.0/users('adams@contoso.com')"
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
					"user@odata.bind" , "https://graph.microsoft.com/v1.0/users('gradyA@contoso.com')"
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
					"user@odata.bind" , "https://graph.microsoft.com/v1.0/users('4562bcc8-c436-4f95-b7c0-4f8ce89dca5e')"
				},
			},
		},
	},
};
var result = await graphClient.Chats.PostAsync(requestBody);


```