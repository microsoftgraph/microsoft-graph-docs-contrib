---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new PrivilegedRoleAssignment
{
	UserId = "userId-value",
	RoleId = "roleId-value",
};
var result = await graphClient.PrivilegedRoleAssignments.PostAsync(requestBody);


```