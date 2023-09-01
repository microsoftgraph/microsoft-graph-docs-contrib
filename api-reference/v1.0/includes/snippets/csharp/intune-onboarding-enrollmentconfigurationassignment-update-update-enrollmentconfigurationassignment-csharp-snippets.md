---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new EnrollmentConfigurationAssignment
{
	OdataType = "#microsoft.graph.enrollmentConfigurationAssignment",
	Target = new ConfigurationManagerCollectionAssignmentTarget
	{
		OdataType = "microsoft.graph.configurationManagerCollectionAssignmentTarget",
		CollectionId = "Collection Id value",
	},
};
var result = await graphClient.DeviceManagement.DeviceEnrollmentConfigurations["{deviceEnrollmentConfiguration-id}"].Assignments["{enrollmentConfigurationAssignment-id}"].PatchAsync(requestBody);


```