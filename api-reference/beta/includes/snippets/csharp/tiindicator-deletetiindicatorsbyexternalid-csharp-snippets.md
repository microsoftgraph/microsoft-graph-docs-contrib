---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Security.TiIndicators.DeleteTiIndicatorsByExternalId;

var requestBody = new DeleteTiIndicatorsByExternalIdPostRequestBody
{
	Value = new List<string>
	{
		"externalId-value1",
		"externalId-value2",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Security.TiIndicators.DeleteTiIndicatorsByExternalId.PostAsDeleteTiIndicatorsByExternalIdPostResponseAsync(requestBody);


```