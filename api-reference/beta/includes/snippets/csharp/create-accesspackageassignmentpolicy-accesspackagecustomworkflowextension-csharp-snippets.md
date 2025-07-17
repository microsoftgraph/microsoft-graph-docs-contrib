---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;
using Microsoft.Kiota.Abstractions.Serialization;

var requestBody = new AccessPackageAssignmentPolicy
{
	DisplayName = "extension-policy",
	Description = "test",
	AccessPackageId = "ba5807c7-2aa9-4c8a-907e-4a17ee587500",
	CanExtend = false,
	RequestApprovalSettings = null,
	RequestorSettings = new RequestorSettings
	{
		AcceptRequests = true,
		ScopeType = "AllExistingDirectorySubjects",
		AllowedRequestors = new List<UserSet>
		{
		},
		AdditionalData = new Dictionary<string, object>
		{
			{
				"isOnBehalfAllowed" , false
			},
		},
	},
	AccessReviewSettings = null,
	Questions = new List<AccessPackageQuestion>
	{
	},
	CustomExtensionStageSettings = new List<CustomExtensionStageSetting>
	{
		new CustomExtensionStageSetting
		{
			Stage = AccessPackageCustomExtensionStage.AssignmentRequestCreated,
			CustomExtension = new CustomCalloutExtension
			{
				Id = "219f57b6-7983-45a1-be01-2c228b7a43f8",
			},
		},
		new CustomExtensionStageSetting
		{
			Stage = AccessPackageCustomExtensionStage.AssignmentRequestGranted,
			CustomExtension = new CustomCalloutExtension
			{
				Id = "219f57b6-7983-45a1-be01-2c228b7a43f8",
			},
		},
	},
	AdditionalData = new Dictionary<string, object>
	{
		{
			"expiration" , new UntypedObject(new Dictionary<string, UntypedNode>
			{
				{
					"type", new UntypedString("afterDuration")
				},
				{
					"duration", new UntypedString("P365D")
				},
			})
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.IdentityGovernance.EntitlementManagement.AccessPackageAssignmentPolicies.PostAsync(requestBody);


```