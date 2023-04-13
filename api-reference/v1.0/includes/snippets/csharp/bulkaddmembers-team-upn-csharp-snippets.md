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
					"user@odata.bind" , "https://graph.microsoft.com/v1.0/users('jacob@contoso.com')"
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
					"user@odata.bind" , "https://graph.microsoft.com/v1.0/users('alex@contoso.com')"
				},
			},
		},
	},
};
var result = await graphClient.Teams["{team-id}"].Members.Add.PostAsync(requestBody);


```