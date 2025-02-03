---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new PermissionGrantPreApprovalPolicy
{
	Id = "71ba13dc-5947-4e59-bcc5-0ad5c339a853",
	DeletedDateTime = null,
	Conditions = new List<PreApprovalDetail>
	{
		new PreApprovalDetail
		{
			ScopeType = ResourceScopeType.Chat,
			SensitivityLabels = new EnumeratedScopeSensitivityLabels
			{
				OdataType = "#microsoft.graph.enumeratedScopeSensitivityLabels",
				LabelKind = LabelKind.Enumerated,
				SensitivityLabels = new List<string>
				{
					"d9c43deb-f3e1-4422-9fd6-ccf22a3206b8",
				},
			},
			Permissions = new AllPreApprovedPermissions
			{
				OdataType = "#microsoft.graph.allPreApprovedPermissions",
				PermissionKind = PermissionKind.All,
				PermissionType = PermissionType.Application,
			},
		},
		new PreApprovalDetail
		{
			ScopeType = ResourceScopeType.Group,
			SensitivityLabels = new AllScopeSensitivityLabels
			{
				OdataType = "#microsoft.graph.allScopeSensitivityLabels",
				LabelKind = LabelKind.All,
			},
			Permissions = new EnumeratedPreApprovedPermissions
			{
				OdataType = "#microsoft.graph.enumeratedPreApprovedPermissions",
				PermissionKind = PermissionKind.Enumerated,
				ResourceApplicationId = "00000003-0000-0000-c000-000000000000",
				PermissionIds = new List<string>
				{
					"134483aa-3dda-4d65-ac91-b8dda1417875",
					"9d33613d-f855-483b-bca7-ea63ac9f5485",
				},
				PermissionType = PermissionType.Application,
			},
		},
	},
	AdditionalData = new Dictionary<string, object>
	{
		{
			"@odata.context" , "https://graph.microsoft.com/beta/$metadata#policies/permissionGrantPreApprovalPolicies/$entity"
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Policies.PermissionGrantPreApprovalPolicies["{permissionGrantPreApprovalPolicy-id}"].PatchAsync(requestBody);


```