---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

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
var result = await graphClient.DeviceManagement.RoleDefinitions["{roleDefinition-id}"].RoleAssignments["{roleAssignment-id}"].PatchAsync(requestBody);


```