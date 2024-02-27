---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models.Networkaccess;

var requestBody = new WebCategoryFilteringRule
{
	OdataType = "#microsoft.graph.networkaccess.webCategoryFilteringRule",
	Name = "Gambling and Storage cateogries",
	Destinations = new List<RuleDestination>
	{
		new WebCategory
		{
			OdataType = "#microsoft.graph.networkaccess.webCategory",
			Name = "Gambling",
		},
		new WebCategory
		{
			OdataType = "#microsoft.graph.networkaccess.webCategory",
			Name = "WebRepositoryAndStorage",
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.NetworkAccess.FilteringPolicies["{filteringPolicy-id}"].PolicyRules["{policyRule-id}"].PatchAsync(requestBody);


```