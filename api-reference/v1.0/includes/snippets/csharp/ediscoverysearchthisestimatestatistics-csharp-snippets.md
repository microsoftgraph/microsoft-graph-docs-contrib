---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Security.Cases.EdiscoveryCases.Item.Searches.Item.MicrosoftGraphSecurityEstimateStatistics;

var requestBody = new EstimateStatisticsPostRequestBody
{
	AdditionalData = new Dictionary<string, object>
	{
		{
			"statisticsOptions" , "includeRefiners, includeQueryStats, includeUnindexedStats, advancedIndexing, locationsWithoutHits"
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.Security.Cases.EdiscoveryCases["{ediscoveryCase-id}"].Searches["{ediscoverySearch-id}"].MicrosoftGraphSecurityEstimateStatistics.PostAsync(requestBody);


```