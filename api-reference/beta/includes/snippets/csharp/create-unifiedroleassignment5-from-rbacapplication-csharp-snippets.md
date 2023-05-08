---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new UnifiedRoleAssignment
{
	PrincipalId = "/ServicePrincipals/0451dbb9-6336-42ea-b58f-5953dc053ece",
	RoleDefinitionId = "f66ab1ee-3cac-4d03-8a64-dadc56e563f8",
	DirectoryScopeId = "/AdministrativeUnits/8b532c7a-4d3e-4e99-8ffa-2dfec92c62eb",
	AppScopeId = null,
};
var result = await graphClient.RoleManagement.Exchange.RoleAssignments.PostAsync(requestBody);


```