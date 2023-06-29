---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Me.TranslateExchangeIds.TranslateExchangeIdsPostRequestBody
{
	InputIds = new List<string>
	{
		"{rest-formatted-id-1}",
		"{rest-formatted-id-2}",
	},
	SourceIdType = ExchangeIdFormat.RestId,
	TargetIdType = ExchangeIdFormat.RestImmutableEntryId,
};
var result = await graphClient.Me.TranslateExchangeIds.PostAsync(requestBody);


```