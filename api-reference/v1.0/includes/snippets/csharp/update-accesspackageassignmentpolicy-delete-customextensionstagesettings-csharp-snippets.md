---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new AccessPackageAssignmentPolicy
{
	Id = "5540a08f-8ab5-43f6-a923-015275799197",
	DisplayName = "policy with access package custom workflow extension",
	Description = "Run specified access package custom workflow extension at different stages.",
	Expiration = new ExpirationPattern
	{
		Type = ExpirationPatternType.AfterDuration,
		Duration = TimeSpan.Parse("P365D"),
	},
	RequestApprovalSettings = null,
	RequestorSettings = new AccessPackageAssignmentRequestorSettings
	{
		AdditionalData = new Dictionary<string, object>
		{
			{
				"acceptRequests" , true
			},
			{
				"scopeType" , "AllExistingDirectorySubjects"
			},
			{
				"allowedRequestors" , new List<object>
				{
				}
			},
		},
	},
	CustomExtensionStageSettings = new List<CustomExtensionStageSetting>
	{
	},
	AdditionalData = new Dictionary<string, object>
	{
		{
			"accessPackageId" , "ba5807c7-2aa9-4c8a-907e-4a17ee587500"
		},
		{
			"accessReviewSettings" , null
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.IdentityGovernance.EntitlementManagement.AssignmentPolicies["{accessPackageAssignmentPolicy-id}"].PutAsync(requestBody);


```