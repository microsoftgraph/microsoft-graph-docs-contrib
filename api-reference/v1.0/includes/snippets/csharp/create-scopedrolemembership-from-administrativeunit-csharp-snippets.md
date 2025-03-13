---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new ScopedRoleMembership
{
	RoleId = "roleId-value",
	RoleMemberInfo = new Identity
	{
		Id = "id-value",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Directory.AdministrativeUnits["{administrativeUnit-id}"].ScopedRoleMembers.PostAsync(requestBody);


```