---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new Workspace
{
	OdataType = "microsoft.graph.workspace",
	ParentId = "f7de7265-e420-47b4-9d49-28d728716241",
	DisplayName = "testSpace001",
	Tags = new List<string>
	{
		"test",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Places.PostAsync(requestBody);


```