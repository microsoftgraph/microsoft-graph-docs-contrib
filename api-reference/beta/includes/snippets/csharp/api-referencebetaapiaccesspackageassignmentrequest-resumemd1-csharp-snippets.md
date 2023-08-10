---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.IdentityGovernance.EntitlementManagement.AccessPackageAssignmentRequests.Item.Resume.ResumePostRequestBody
{
	Source = "Contoso.SodCheckProcess",
	Type = "microsoft.graph.accessPackageCustomExtensionStage.assignmentRequestCreated",
	Data = new AccessPackageAssignmentRequestCallbackData
	{
		OdataType = "microsoft.graph.accessPackageAssignmentRequestCallbackData",
		Stage = AccessPackageCustomExtensionStage.AssignmentRequestCreated,
		CustomExtensionStageInstanceId = "857d0c50-466b-4840-bb5b-c92cea7141ff",
		State = "denied",
		CustomExtensionStageInstanceDetail = "Potential risk user based on the SOD check",
	},
};
await graphClient.IdentityGovernance.EntitlementManagement.AccessPackageAssignmentRequests["{accessPackageAssignmentRequest-id}"].Resume.PostAsync(requestBody);


```