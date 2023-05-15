---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new UnifiedRoleAssignment
{
	OdataType = "#microsoft.graph.unifiedRoleAssignment",
	RoleDefinitionId = "58a13ea3-c632-46ae-9ee0-9c0d43cd7f3d",
	PrincipalId = "f8ca5a85-489a-49a0-b555-0a6d81e56f0d",
	DirectoryScopeId = "/attributeSets/Engineering",
};
var result = await graphClient.RoleManagement.Directory.RoleAssignments.PostAsync(requestBody);


```