---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new Place
{
	OdataType = "microsoft.graph.building",
	AdditionalData = new Dictionary<string, object>
	{
		{
			"tags" , new List<string>
			{
				"most popular building",
			}
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Places["{place-id}"].PatchAsync(requestBody);


```