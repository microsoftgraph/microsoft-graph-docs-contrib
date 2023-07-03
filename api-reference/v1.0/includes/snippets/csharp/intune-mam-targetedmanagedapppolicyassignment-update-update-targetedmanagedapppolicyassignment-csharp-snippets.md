---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new TargetedManagedAppPolicyAssignment
{
	OdataType = "#microsoft.graph.targetedManagedAppPolicyAssignment",
	Target = new ConfigurationManagerCollectionAssignmentTarget
	{
		OdataType = "microsoft.graph.configurationManagerCollectionAssignmentTarget",
		CollectionId = "Collection Id value",
	},
};
var result = await graphClient.DeviceAppManagement.IosManagedAppProtections["{iosManagedAppProtection-id}"].Assignments["{targetedManagedAppPolicyAssignment-id}"].PatchAsync(requestBody);


```