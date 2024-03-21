---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models.Networkaccess;

var requestBody = new FilteringPolicy
{
	Name = "Block Social",
	PolicyRules = new List<PolicyRule>
	{
		new WebCategoryFilteringRule
		{
			OdataType = "#microsoft.graph.networkaccess.webCategoryFilteringRule",
			Name = "Block Social",
			RuleType = NetworkDestinationType.WebCategory,
			Destinations = new List<RuleDestination>
			{
				new WebCategory
				{
					OdataType = "#microsoft.graph.networkaccess.webCategory",
					Name = "SocialNetworking",
				},
			},
		},
	},
	Action = FilteringPolicyAction.Block,
	Description = "Block Social Sites",
	OdataType = "#microsoft.graph.networkaccess.filteringPolicy",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.NetworkAccess.FilteringPolicies.PostAsync(requestBody);


```