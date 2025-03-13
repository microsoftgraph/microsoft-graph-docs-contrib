---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.DeviceAppManagement.TargetedManagedAppConfigurations.Item.Assign;
using Microsoft.Graph.Models;

var requestBody = new AssignPostRequestBody
{
	Assignments = new List<TargetedManagedAppPolicyAssignment>
	{
		new TargetedManagedAppPolicyAssignment
		{
			OdataType = "#microsoft.graph.targetedManagedAppPolicyAssignment",
			Id = "8b68c4a6-c4a6-8b68-a6c4-688ba6c4688b",
			Target = new ConfigurationManagerCollectionAssignmentTarget
			{
				OdataType = "microsoft.graph.configurationManagerCollectionAssignmentTarget",
				CollectionId = "Collection Id value",
			},
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.DeviceAppManagement.TargetedManagedAppConfigurations["{targetedManagedAppConfiguration-id}"].Assign.PostAsync(requestBody);


```