---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.DeviceManagement.DeviceCompliancePolicies.Item.Assign;
using Microsoft.Graph.Models;

var requestBody = new AssignPostRequestBody
{
	Assignments = new List<DeviceCompliancePolicyAssignment>
	{
		new DeviceCompliancePolicyAssignment
		{
			OdataType = "#microsoft.graph.deviceCompliancePolicyAssignment",
			Id = "92dc3fef-3fef-92dc-ef3f-dc92ef3fdc92",
			Target = new ConfigurationManagerCollectionAssignmentTarget
			{
				OdataType = "microsoft.graph.configurationManagerCollectionAssignmentTarget",
				CollectionId = "Collection Id value",
			},
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.DeviceManagement.DeviceCompliancePolicies["{deviceCompliancePolicy-id}"].Assign.PostAsAssignPostResponseAsync(requestBody);


```