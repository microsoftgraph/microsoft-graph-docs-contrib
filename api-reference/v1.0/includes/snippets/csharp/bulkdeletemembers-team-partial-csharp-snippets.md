---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Teams.Item.Members.Remove;
using Microsoft.Graph.Models;

var requestBody = new RemovePostRequestBody
{
	Values = new List<ConversationMember>
	{
		new AadUserConversationMember
		{
			OdataType = "microsoft.graph.aadUserConversationMember",
			AdditionalData = new Dictionary<string, object>
			{
				{
					"user@odata.bind" , "https://graph.microsoft.com/v1.0/users('c04f28bf-ab68-40a2-974b-e6af31fa78fb')"
				},
			},
		},
		new AadUserConversationMember
		{
			OdataType = "microsoft.graph.aadUserConversationMember",
			AdditionalData = new Dictionary<string, object>
			{
				{
					"user@odata.bind" , "https://graph.microsoft.com/v1.0/users('86503198-b81b-43fe-81ee-ad45b8848ac9')"
				},
			},
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Teams["{team-id}"].Members.Remove.PostAsRemovePostResponseAsync(requestBody);


```