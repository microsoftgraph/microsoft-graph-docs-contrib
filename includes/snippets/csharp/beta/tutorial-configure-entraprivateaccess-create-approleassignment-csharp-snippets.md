---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new AppRoleAssignment
{
	PrincipalId = Guid.Parse("4628e7df-dff3-407c-a08f-75f08c0806dc"),
	PrincipalType = "User",
	AppRoleId = Guid.Parse("18d14569-c3bd-439b-9a66-3a2aee01d14f"),
	ResourceId = Guid.Parse("a8cac399-cde5-4516-a674-819503c61313"),
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.ServicePrincipals["{servicePrincipal-id}"].AppRoleAssignments.PostAsync(requestBody);


```