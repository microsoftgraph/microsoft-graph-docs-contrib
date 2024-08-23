---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Security.TiIndicators.DeleteTiIndicators;

var requestBody = new DeleteTiIndicatorsPostRequestBody
{
	Value = new List<string>
	{
		"id-value1",
		"id-value2",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Security.TiIndicators.DeleteTiIndicators.PostAsDeleteTiIndicatorsPostResponseAsync(requestBody);


```