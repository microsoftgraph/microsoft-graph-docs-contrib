---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

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