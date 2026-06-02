---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models.TenantGovernanceServices;

var requestBody = new GovernanceRequest
{
	GovernedTenantId = "bbbbcccc-1111-dddd-2222-eeee3333ffff",
	AdditionalData = new Dictionary<string, object>
	{
		{
			"governancePolicyTemplate@odata.bind" , "https://graph.microsoft.com/beta/directory/tenantGovernance/governancePolicyTemplates/d3d3d3d3-eeee-ffff-aaaa-b4b4b4b4b4b4"
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Directory.TenantGovernance.GovernanceRequests.PostAsync(requestBody);


```