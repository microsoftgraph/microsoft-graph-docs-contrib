---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new AppRoleAssignment
{
	PrincipalId = Guid.Parse("b0d9b9e3-0ecf-4bfd-8dab-9273dd055a94"),
	ResourceId = Guid.Parse("7ea9e944-71ce-443d-811c-71e8047b557a"),
	AppRoleId = Guid.Parse("df021288-bdef-4463-88db-98f22de89214"),
};
var result = await graphClient.ServicePrincipals["{servicePrincipal-id}"].AppRoleAssignedTo.PostAsync(requestBody);


```