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
	DisplayName = "API Created policy with updated customExtensionStageSettings",
	Description = "policy with updated customExtensionStageSettings",
	RequestorSettings = new RequestorSettings
	{
		AdditionalData = new Dictionary<string, object>
		{
			{
				"enableTargetsToSelfAddAccess" , false
			},
			{
				"enableTargetsToSelfUpdateAccess" , false
			},
			{
				"enableTargetsToSelfRemoveAccess" , false
			},
			{
				"allowCustomAssignmentSchedule" , true
			},
			{
				"enableOnBehalfRequestorsToAddAccess" , false
			},
			{
				"enableOnBehalfRequestorsToUpdateAccess" , false
			},
			{
				"enableOnBehalfRequestorsToRemoveAccess" , false
			},
			{
				"onBehalfRequestors" , new List<object>
				{
				}
			},
		},
	},
	RequestApprovalSettings = new ApprovalSettings
	{
		AdditionalData = new Dictionary<string, object>
		{
			{
				"isApprovalRequiredForAdd" , false
			},
			{
				"isApprovalRequiredForUpdate" , false
			},
			{
				"stages" , new List<object>
				{
				}
			},
		},
	},
	AccessPackage = new AccessPackage
	{
		Id = "f9afd2e3-7486-40df-9c35-aa2ae108c495",
	},
	CustomExtensionStageSettings = new List<CustomExtensionStageSetting>
	{
		new CustomExtensionStageSetting
		{
			Stage = AccessPackageCustomExtensionStage.AssignmentRequestCreated,
			CustomExtension = new AccessPackageAssignmentRequestWorkflowExtension
			{
				OdataType = "#microsoft.graph.accessPackageAssignmentRequestWorkflowExtension",
				Id = "bebe7873-1f0d-4db9-b6c3-01f7ebfe8476",
			},
		},
	},
	AdditionalData = new Dictionary<string, object>
	{
		{
			"allowedTargetScope" , "notSpecified"
		},
		{
			"specificAllowedTargets" , new List<object>
			{
			}
		},
		{
			"expiration" , new UntypedObject(new Dictionary<string, UntypedNode>
			{
				{
					"endDateTime", new UntypedNull()
				},
				{
					"duration", new UntypedNull()
				},
				{
					"type", new UntypedString("noExpiration")
				},
			})
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.IdentityGovernance.EntitlementManagement.AccessPackageAssignmentPolicies["{accessPackageAssignmentPolicy-id}"].PutAsync(requestBody);


```