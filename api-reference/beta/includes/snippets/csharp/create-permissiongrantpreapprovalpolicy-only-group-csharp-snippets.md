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
			ScopeType = ResourceScopeType.Group,
			SensitivityLabels = new AllScopeSensitivityLabels
			{
				OdataType = "#microsoft.graph.allScopeSensitivityLabels",
				LabelKind = LabelKind.All,
			},
			Permissions = new PreApprovedPermissions
			{
				OdataType = "#microsoft.graph.allPermissionsOnResourceApp",
				PermissionKind = PermissionKind.AllPermissionsOnResourceApp,
				PermissionType = PermissionType.Application,
				AdditionalData = new Dictionary<string, object>
				{
					{
						"resourceApplicationId" , "00000003-0000-0000-c000-000000000000"
					},
				},
			},
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Policies.PermissionGrantPreApprovalPolicies.PostAsync(requestBody);


```