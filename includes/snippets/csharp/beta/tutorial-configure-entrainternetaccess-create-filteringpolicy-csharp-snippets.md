---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models.Networkaccess;

var requestBody = new FilteringPolicy
{
	Name = "AI and Bing",
	PolicyRules = new List<PolicyRule>
	{
		new WebCategoryFilteringRule
		{
			OdataType = "#microsoft.graph.networkaccess.webCategoryFilteringRule",
			Name = "AI",
			RuleType = NetworkDestinationType.WebCategory,
			Destinations = new List<RuleDestination>
			{
				new WebCategory
				{
					OdataType = "#microsoft.graph.networkaccess.webCategory",
					Name = "ArtificialIntelligence",
				},
			},
		},
		new FqdnFilteringRule
		{
			OdataType = "#microsoft.graph.networkaccess.fqdnFilteringRule",
			Name = "bing FQDNs",
			RuleType = NetworkDestinationType.Fqdn,
			Destinations = new List<RuleDestination>
			{
				new Fqdn
				{
					OdataType = "#microsoft.graph.networkaccess.fqdn",
					Value = "bing.com",
				},
				new Fqdn
				{
					OdataType = "#microsoft.graph.networkaccess.fqdn",
					Value = "*.bing.com",
				},
			},
		},
	},
	Action = FilteringPolicyAction.Block,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.NetworkAccess.FilteringPolicies.PostAsync(requestBody);


```