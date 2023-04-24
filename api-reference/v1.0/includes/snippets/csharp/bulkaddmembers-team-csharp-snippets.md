---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Teams.Item.Members.Add.AddPostRequestBody
{
	Values = new List<ConversationMember>
	{
		new ConversationMember
		{
			OdataType = "microsoft.graph.aadUserConversationMember",
			Roles = new List<String>
			{
			},
			AdditionalData = new Dictionary<string, object>
			{
				{
					"user@odata.bind" , "https://graph.microsoft.com/v1.0/users('18a80140-b0fb-4489-b360-2f6efaf225a0')"
				},
			},
		},
		new ConversationMember
		{
			OdataType = "microsoft.graph.aadUserConversationMember",
			Roles = new List<string>
			{
				"owner",
			},
			AdditionalData = new Dictionary<string, object>
			{
				{
					"user@odata.bind" , "https://graph.microsoft.com/v1.0/users('86503198-b81b-43fe-81ee-ad45b8848ac9')"
				},
			},
		},
	},
};
var result = await graphClient.Teams["{team-id}"].Members.Add.PostAsync(requestBody);


```