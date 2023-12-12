---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new DeviceAndAppManagementRoleDefinition
{
	OdataType = "#microsoft.graph.deviceAndAppManagementRoleDefinition",
	DisplayName = "Display Name value",
	Description = "Description value",
	RolePermissions = new List<RolePermission>
	{
		new RolePermission
		{
			OdataType = "microsoft.graph.rolePermission",
			ResourceActions = new List<ResourceAction>
			{
				new ResourceAction
				{
					OdataType = "microsoft.graph.resourceAction",
					AllowedResourceActions = new List<string>
					{
						"Allowed Resource Actions value",
					},
					NotAllowedResourceActions = new List<string>
					{
						"Not Allowed Resource Actions value",
					},
				},
			},
		},
	},
	IsBuiltIn = true,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.DeviceManagement.RoleDefinitions["{roleDefinition-id}"].PatchAsync(requestBody);


```