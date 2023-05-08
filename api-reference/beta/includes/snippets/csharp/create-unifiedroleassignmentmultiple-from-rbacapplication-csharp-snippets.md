---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new UnifiedRoleAssignmentMultiple
{
	OdataType = "#microsoft.graph.unifiedRoleAssignmentMultiple",
	DisplayName = "My test role assignment 1",
	RoleDefinitionId = "c2cf284d-6c41-4e6b-afac-4b80928c9034",
	PrincipalIds = new List<string>
	{
		"f8ca5a85-489a-49a0-b555-0a6d81e56f0d",
		"c1518aa9-4da5-4c84-a902-a31404023890",
	},
	DirectoryScopeIds = new List<string>
	{
		"28ca5a85-489a-49a0-b555-0a6d81e56f0d",
		"8152656a-cf9a-4928-a457-1512d4cae295",
	},
};
var result = await graphClient.RoleManagement.DeviceManagement.RoleAssignments.PostAsync(requestBody);


```