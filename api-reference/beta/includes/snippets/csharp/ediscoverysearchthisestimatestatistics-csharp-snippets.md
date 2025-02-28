---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Security.Cases.EdiscoveryCases.Item.Searches.Item.MicrosoftGraphSecurityEstimateStatistics;
using Microsoft.Graph.Beta.Models.Security;

var requestBody = new EstimateStatisticsPostRequestBody
{
	StatisticsOptions = StatisticsOptions.IncludeRefiners | StatisticsOptions.IncludeQueryStats | StatisticsOptions.IncludeUnindexedStats | StatisticsOptions.AdvancedIndexing | StatisticsOptions.LocationsWithoutHits,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.Security.Cases.EdiscoveryCases["{ediscoveryCase-id}"].Searches["{ediscoverySearch-id}"].MicrosoftGraphSecurityEstimateStatistics.PostAsync(requestBody);


```