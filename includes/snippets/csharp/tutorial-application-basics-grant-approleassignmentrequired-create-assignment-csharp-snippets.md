---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var appRoleAssignment = new AppRoleAssignment
{
	PrincipalId = Guid.Parse("b8afc02cb-4d62-4dba-b536-9f6d73e9e26"),
	ResourceId = Guid.Parse("89473e09-0737-41a1-a0c3-1418d6908bcd"),
	AppRoleId = Guid.Parse("00000000-0000-0000-0000-000000000000")
};

await graphClient.ServicePrincipals["{servicePrincipal-id}"].AppRoleAssignedTo
	.Request()
	.AddAsync(appRoleAssignment);

```