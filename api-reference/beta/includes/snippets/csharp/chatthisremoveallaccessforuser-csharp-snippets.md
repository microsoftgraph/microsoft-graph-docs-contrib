---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Chats.Item.RemoveAllAccessForUser;
using Microsoft.Graph.Beta.Models;

var requestBody = new RemoveAllAccessForUserPostRequestBody
{
	User = new TeamworkUserIdentity
	{
		OdataType = "microsoft.graph.teamworkUserIdentity",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.Chats["{chat-id}"].RemoveAllAccessForUser.PostAsync(requestBody);


```