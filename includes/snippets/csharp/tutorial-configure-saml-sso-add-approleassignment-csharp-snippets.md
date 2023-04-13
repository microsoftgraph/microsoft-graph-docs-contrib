---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new AppRoleAssignment
{
	PrincipalId = Guid.Parse("040f9599-7c0f-4f94-aa75-8394c4c6ea9b"),
	PrincipalType = "User",
	AppRoleId = Guid.Parse("3a84e31e-bffa-470f-b9e6-754a61e4dc63"),
	ResourceId = Guid.Parse("a750f6cf-2319-464a-bcc3-456926736a91"),
};
var result = await graphClient.ServicePrincipals["{servicePrincipal-id}"].AppRoleAssignments.PostAsync(requestBody);


```