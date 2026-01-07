---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.IdentityGovernance.EntitlementManagement.AccessPackageAssignmentRequests.Item.Resume;
using Microsoft.Graph.Beta.Models;

var requestBody = new ResumePostRequestBody
{
	Source = "Contoso.AADProcess",
	Type = "microsoft.graph.accessPackageCustomExtensionStage.assignmentRequestCreated",
	Data = new AccessPackageRequestApprovalStageCallbackConfiguration
	{
		OdataType = "microsoft.graph.accessPackageRequestApprovalStageCallbackConfiguration",
		AdditionalData = new Dictionary<string, object>
		{
			{
				"stage" , "assignmentRequestCreated"
			},
			{
				"customExtensionStageInstanceId" , "7bf58d34-b3f9-4bae-8deb-abcd25cddea1"
			},
			{
				"customExtensionStageInstanceDetail" , "Completed."
			},
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.IdentityGovernance.EntitlementManagement.AccessPackageAssignmentRequests["{accessPackageAssignmentRequest-id}"].Resume.PostAsync(requestBody);


```