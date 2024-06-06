---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new PermissionGrantPreApprovalPolicy
{
	Conditions = new List<PreApprovalDetail>
	{
		new PreApprovalDetail
		{
			ScopeType = ResourceScopeType.Chat,
			SensitivityLabels = new AllScopeSensitivityLabels
			{
				OdataType = "#microsoft.graph.allScopeSensitivityLabels",
				LabelKind = LabelKind.All,
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
			Permissions = new EnumeratedPreApprovedPermissions
			{
				OdataType = "#microsoft.graph.enumeratedPreApprovedPermissions",
				PermissionKind = PermissionKind.Enumerated,
				PermissionType = PermissionType.Application,
				ResourceApplicationId = "00000003-0000-0000-c000-000000000000",
				PermissionIds = new List<string>
				{
					"134483aa-3dda-4d65-ac91-b8dda1417875",
					"9d33613d-f855-483b-bca7-ea63ac9f5485",
				},
			},
			AdditionalData = new Dictionary<string, object>
			{
				{
					"scopeSensitivityLabels" , new EnumeratedScopeSensitivityLabels
					{
						OdataType = "microsoft.graph.enumeratedScopeSensitivityLabels",
						LabelKind = LabelKind.Enumerated,
						SensitivityLabels = new List<string>
						{
							"d9c43deb-f3e1-4422-9fd6-ccf22a3206b8",
							"c99dade2-aa54-4890-ac1c-a146fa26bd1e",
						},
					}
				},
			},
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Policies.PermissionGrantPreApprovalPolicies.PostAsync(requestBody);


```