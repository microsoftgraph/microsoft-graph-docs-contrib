---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

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
var result = await graphClient.DeviceManagement.RoleAssignments.PostAsync(requestBody);


```