---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new Group
{
	AdditionalData = new Dictionary<string, object>
	{
		{
			"members@odata.bind" , new List<string>
			{
				"https://graph.microsoft.com/beta/directoryObjects/{id}",
				"https://graph.microsoft.com/beta/directoryObjects/{id}",
				"https://graph.microsoft.com/beta/directoryObjects/{id}",
			}
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Groups["{group-id}"].PatchAsync(requestBody);


```