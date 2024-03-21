---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Communications.GetPresencesByUserId;

var requestBody = new GetPresencesByUserIdPostRequestBody
{
	Ids = new List<string>
	{
		"fa8bf3dc-eca7-46b7-bad1-db199b62afc3",
		"66825e03-7ef5-42da-9069-724602c31f6b",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Communications.GetPresencesByUserId.PostAsGetPresencesByUserIdPostResponseAsync(requestBody);


```