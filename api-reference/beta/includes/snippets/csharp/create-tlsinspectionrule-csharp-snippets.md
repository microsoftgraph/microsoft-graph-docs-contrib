---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models.Networkaccess;

var requestBody = new TlsInspectionRule
{
	OdataType = "#microsoft.graph.networkaccess.tlsInspectionRule",
	Name = "Contoso TLS Rule 1",
	Priority = 100L,
	Description = "My TLS rule",
	Settings = new TlsInspectionRuleSettings
	{
		Status = SecurityRuleStatus.Enabled,
	},
	MatchingConditions = new TlsInspectionMatchingConditions
	{
		Destinations = new List<TlsInspectionDestination>
		{
			new TlsInspectionFqdnDestination
			{
				OdataType = "#microsoft.graph.networkaccess.tlsInspectionFqdnDestination",
				Values = new List<string>
				{
					"www.contoso.test.com",
					"*.contoso.org",
				},
			},
			new TlsInspectionDestination
			{
				OdataType = "#microsoft.graph.networkaccess.tlsInspectionWebCategoriesDestination",
				AdditionalData = new Dictionary<string, object>
				{
					{
						"values" , new List<string>
						{
							"Entertainment",
						}
					},
				},
			},
		},
	},
	AdditionalData = new Dictionary<string, object>
	{
		{
			"action" , "inspect"
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.NetworkAccess.TlsInspectionPolicies["{tlsInspectionPolicy-id}"].PolicyRules.PostAsync(requestBody);


```