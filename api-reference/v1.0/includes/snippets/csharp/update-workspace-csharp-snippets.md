---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new Workspace
{
	OdataType = "microsoft.graph.workspace",
	Nickname = "Conf Room",
	Label = "100",
	Capacity = 50,
	IsWheelChairAccessible = false,
	AdditionalData = new Dictionary<string, object>
	{
		{
			"building" , "1"
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Places["{place-id}"].PatchAsync(requestBody);


```