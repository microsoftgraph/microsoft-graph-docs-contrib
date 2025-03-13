---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new AppRoleAssignment
{
	PrincipalId = Guid.Parse("59bb3898-0621-4414-ac61-74f9d7201355"),
	PrincipalType = "User",
	AppRoleId = Guid.Parse("3a84e31e-bffa-470f-b9e6-754a61e4dc63"),
	ResourceId = Guid.Parse("d3616293-fff8-4415-9f01-33b05dad1b46"),
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.ServicePrincipals["{servicePrincipal-id}"].AppRoleAssignments.PostAsync(requestBody);


```