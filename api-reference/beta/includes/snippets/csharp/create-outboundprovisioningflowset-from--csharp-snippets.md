---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models.IndustryData;

var requestBody = new OutboundProvisioningFlowSet
{
	OdataType = "#microsoft.graph.industryData.outboundProvisioningFlowSet",
	DisplayName = "Outbound Provisioning Flow Test",
	Filter = new BasicFilter
	{
		OdataType = "#microsoft.graph.industryData.basicFilter",
		Attribute = FilterOptions.OrgExternalId,
		In = new List<string>
		{
			"Quarter",
			"Demo",
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.External.IndustryData.OutboundProvisioningFlowSets.PostAsync(requestBody);


```