---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Chats.Item.RemoveAllAccessForUser;
using Microsoft.Graph.Models;

var requestBody = new RemoveAllAccessForUserPostRequestBody
{
	User = new TeamworkUserIdentity
	{
		OdataType = "microsoft.graph.teamworkUserIdentity",
		Id = "f47ac10b-58cc-4372-a567-0e02b2c3d479",
		AdditionalData = new Dictionary<string, object>
		{
			{
				"tenantId" , "a1b2c3d4-e5f6-7890-1234-567890abcdef"
			},
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.Chats["{chat-id}"].RemoveAllAccessForUser.PostAsync(requestBody);


```