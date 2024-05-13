---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models.IndustryData;

var requestBody = new SecurityGroupProvisioningFlow
{
	OdataType = "#microsoft.graph.industryData.securityGroupProvisioningFlow",
	CreationOptions = new SecurityGroupCreationOptions
	{
		CreateBasedOnroleGroup = true,
		CreateBasedOnOrgPlusroleGroup = false,
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.External.IndustryData.OutboundProvisioningFlowSets["{outboundProvisioningFlowSet-id}"].ProvisioningFlows.PostAsync(requestBody);


```