---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.DeviceManagement.DeviceEnrollmentConfigurations.Item.Assign;
using Microsoft.Graph.Models;

var requestBody = new AssignPostRequestBody
{
	EnrollmentConfigurationAssignments = new List<EnrollmentConfigurationAssignment>
	{
		new EnrollmentConfigurationAssignment
		{
			OdataType = "#microsoft.graph.enrollmentConfigurationAssignment",
			Id = "705b021c-021c-705b-1c02-5b701c025b70",
			Target = new ConfigurationManagerCollectionAssignmentTarget
			{
				OdataType = "microsoft.graph.configurationManagerCollectionAssignmentTarget",
				CollectionId = "Collection Id value",
			},
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.DeviceManagement.DeviceEnrollmentConfigurations["{deviceEnrollmentConfiguration-id}"].Assign.PostAsync(requestBody);


```