---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Me.TranslateExchangeIds;
using Microsoft.Graph.Models;

var requestBody = new TranslateExchangeIdsPostRequestBody
{
	InputIds = new List<string>
	{
		"{rest-formatted-id-1}",
		"{rest-formatted-id-2}",
	},
	SourceIdType = ExchangeIdFormat.RestId,
	TargetIdType = ExchangeIdFormat.RestImmutableEntryId,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Me.TranslateExchangeIds.PostAsTranslateExchangeIdsPostResponseAsync(requestBody);


```