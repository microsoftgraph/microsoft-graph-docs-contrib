---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var scopedRoleMembership = await graphClient.Directory.AdministrativeUnits["{id}"].ScopedRoleMembers["{id}"]
	.Request()
	.GetAsync();

```