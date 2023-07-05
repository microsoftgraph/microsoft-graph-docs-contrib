---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new TermsAndConditionsAssignment
{
	OdataType = "#microsoft.graph.termsAndConditionsAssignment",
	Target = new ConfigurationManagerCollectionAssignmentTarget
	{
		OdataType = "microsoft.graph.configurationManagerCollectionAssignmentTarget",
		CollectionId = "Collection Id value",
	},
};
var result = await graphClient.DeviceManagement.TermsAndConditions["{termsAndConditions-id}"].Assignments.PostAsync(requestBody);


```