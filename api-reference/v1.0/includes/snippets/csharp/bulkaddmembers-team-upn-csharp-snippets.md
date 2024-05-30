---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Teams.Item.Members.Add;
using Microsoft.Graph.Models;

var requestBody = new AddPostRequestBody
{
	Values = new List<ConversationMember>
	{
		new AadUserConversationMember
		{
			OdataType = "microsoft.graph.aadUserConversationMember",
			Roles = new List<string>
			{
			},
			AdditionalData = new Dictionary<string, object>
			{
				{
					"user@odata.bind" , "https://graph.microsoft.com/v1.0/users('jacob@contoso.com')"
				},
			},
		},
		new AadUserConversationMember
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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Teams["{team-id}"].Members.Add.PostAsAddPostResponseAsync(requestBody);


```