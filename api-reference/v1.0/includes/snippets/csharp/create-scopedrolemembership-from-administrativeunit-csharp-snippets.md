---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new ScopedRoleMembership
{
	RoleId = "roleId-value",
	RoleMemberInfo = new Identity
	{
		Id = "id-value",
	},
};
var result = await graphClient.Directory.AdministrativeUnits["{administrativeUnit-id}"].ScopedRoleMembers.PostAsync(requestBody);


```