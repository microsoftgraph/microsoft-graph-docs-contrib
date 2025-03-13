---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.IdentityGovernance.EntitlementManagement.AssignmentRequests.Item.Resume;
using Microsoft.Graph.Models;

var requestBody = new ResumePostRequestBody
{
	Source = "Contoso.SodCheckProcess",
	Type = "microsoft.graph.accessPackageCustomExtensionStage.assignmentRequestCreated",
	Data = new AccessPackageAssignmentRequestCallbackData
	{
		OdataType = "microsoft.graph.accessPackageAssignmentRequestCallbackData",
		Stage = AccessPackageCustomExtensionStage.AssignmentRequestCreated,
		CustomExtensionStageInstanceId = "957d0c50-466b-4840-bb5b-c92cea7141ff",
		CustomExtensionStageInstanceDetail = "This user is all verified",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.IdentityGovernance.EntitlementManagement.AssignmentRequests["{accessPackageAssignmentRequest-id}"].Resume.PostAsync(requestBody);


```