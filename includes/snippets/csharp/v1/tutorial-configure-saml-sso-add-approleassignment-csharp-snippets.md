---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new AppRoleAssignment
{
	PrincipalId = Guid.Parse("040f9599-7c0f-4f94-aa75-8394c4c6ea9b"),
	PrincipalType = "User",
	AppRoleId = Guid.Parse("3a84e31e-bffa-470f-b9e6-754a61e4dc63"),
	ResourceId = Guid.Parse("a750f6cf-2319-464a-bcc3-456926736a91"),
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.ServicePrincipals["{servicePrincipal-id}"].AppRoleAssignments.PostAsync(requestBody);


```