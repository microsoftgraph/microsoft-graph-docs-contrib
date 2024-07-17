---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new AccessPackageAssignmentPolicy
{
	DisplayName = "customExtensionStageSettings policy",
	Description = "policy with specified stages for custom extension assignment",
	AllowedTargetScope = AllowedTargetScope.NotSpecified,
	SpecificAllowedTargets = new List<SubjectSet>
	{
	},
	Expiration = new ExpirationPattern
	{
		EndDateTime = null,
		Duration = null,
		Type = ExpirationPatternType.NoExpiration,
	},
	RequestorSettings = new AccessPackageAssignmentRequestorSettings
	{
		EnableTargetsToSelfAddAccess = false,
		EnableTargetsToSelfUpdateAccess = false,
		EnableTargetsToSelfRemoveAccess = false,
		AllowCustomAssignmentSchedule = true,
		EnableOnBehalfRequestorsToAddAccess = false,
		EnableOnBehalfRequestorsToUpdateAccess = false,
		EnableOnBehalfRequestorsToRemoveAccess = false,
		OnBehalfRequestors = new List<SubjectSet>
		{
		},
	},
	RequestApprovalSettings = new AccessPackageAssignmentApprovalSettings
	{
		IsApprovalRequiredForAdd = false,
		IsApprovalRequiredForUpdate = false,
		Stages = new List<AccessPackageApprovalStage>
		{
		},
	},
	AccessPackage = new AccessPackage
	{
		Id = "5ad1eb64-15f7-4614-b419-05d11ee266bf",
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
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.IdentityGovernance.EntitlementManagement.AssignmentPolicies.PostAsync(requestBody);


```