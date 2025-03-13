---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new AppRoleAssignment
{
	PrincipalId = Guid.Parse("9028d19c-26a9-4809-8e3f-20ff73e2d75e"),
	ResourceId = Guid.Parse("8fce32da-1246-437b-99cd-76d1d4677bd5"),
	AppRoleId = Guid.Parse("498476ce-e0fe-48b0-b801-37ba7e2685c6"),
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.ServicePrincipals["{servicePrincipal-id}"].AppRoleAssignments.PostAsync(requestBody);


```