---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.DeviceManagement.VirtualEndpoint.ProvisioningPolicies.Item.Assign;
using Microsoft.Graph.Models;

var requestBody = new AssignPostRequestBody
{
	Assignments = new List<CloudPcProvisioningPolicyAssignment>
	{
		new CloudPcProvisioningPolicyAssignment
		{
			Target = new CloudPcManagementGroupAssignmentTarget
			{
				OdataType = "microsoft.graph.cloudPcManagementGroupAssignmentTarget",
				GroupId = "64ff06de-9c00-4a5a-98b5-7f5abe26ffff",
			},
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.DeviceManagement.VirtualEndpoint.ProvisioningPolicies["{cloudPcProvisioningPolicy-id}"].Assign.PostAsync(requestBody);


```