---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var appRoleAssignment = new AppRoleAssignment
{
	PrincipalId = Guid.Parse("4628e7df-dff3-407c-a08f-75f08c0806dc"),
	PrincipalType = "User",
	AppRoleId = Guid.Parse("18d14569-c3bd-439b-9a66-3a2aee01d14f"),
	ResourceId = Guid.Parse("a8cac399-cde5-4516-a674-819503c61313")
};

await graphClient.ServicePrincipals["{servicePrincipal-id}"].AppRoleAssignments
	.Request()
	.AddAsync(appRoleAssignment);

```