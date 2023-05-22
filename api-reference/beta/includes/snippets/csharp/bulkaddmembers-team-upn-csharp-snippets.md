---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Teams.Item.Members.Add.AddPostRequestBody
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
					"user@odata.bind" , "https://graph.microsoft.com/beta/users('jacob@contoso.com')"
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
					"user@odata.bind" , "https://graph.microsoft.com/beta/users('alex@contoso.com')"
				},
			},
		},
	},
};
var result = await graphClient.Teams["{team-id}"].Members.Add.PostAsync(requestBody);


```