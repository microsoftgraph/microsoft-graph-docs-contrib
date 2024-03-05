---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Security.TiIndicators.UpdateTiIndicators;
using Microsoft.Graph.Beta.Models;

var requestBody = new UpdateTiIndicatorsPostRequestBody
{
	Value = new List<TiIndicator>
	{
		new TiIndicator
		{
			Id = "c6fb948b-89c5-3bba-a2cd-a9d9a1e430e4",
			AdditionalInformation = "mytest",
		},
		new TiIndicator
		{
			Id = "e58c072b-c9bb-a5c4-34ce-eb69af44fb1e",
			AdditionalInformation = "test again",
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Security.TiIndicators.UpdateTiIndicators.PostAsUpdateTiIndicatorsPostResponseAsync(requestBody);


```