---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new RoleAssignment
{
	OdataType = "#microsoft.graph.roleAssignment",
	DisplayName = "Display Name value",
	Description = "Description value",
	ResourceScopes = new List<string>
	{
		"Resource Scopes value",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.DeviceManagement.RoleDefinitions["{roleDefinition-id}"].RoleAssignments.PostAsync(requestBody);


```