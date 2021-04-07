---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var appRoleAssignment = new AppRoleAssignment
{
	PrincipalId = Guid.Parse("8fce32da-1246-437b-99cd-76d1d4677bd5"),
	ResourceId = Guid.Parse("9028d19c-26a9-4809-8e3f-20ff73e2d75e"),
	AppRoleId = Guid.Parse("ef7437e6-4f94-4a0a-a110-a439eb2aa8f7")
};

await graphClient.ServicePrincipals["{servicePrincipal-id}"].AppRoleAssignments
	.Request()
	.AddAsync(appRoleAssignment);

```