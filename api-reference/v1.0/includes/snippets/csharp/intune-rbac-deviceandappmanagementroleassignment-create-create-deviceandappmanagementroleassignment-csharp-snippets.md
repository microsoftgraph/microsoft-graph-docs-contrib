---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new DeviceAndAppManagementRoleAssignment
{
	OdataType = "#microsoft.graph.deviceAndAppManagementRoleAssignment",
	DisplayName = "Display Name value",
	Description = "Description value",
	ResourceScopes = new List<string>
	{
		"Resource Scopes value",
	},
	Members = new List<string>
	{
		"Members value",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.DeviceManagement.RoleAssignments.PostAsync(requestBody);


```