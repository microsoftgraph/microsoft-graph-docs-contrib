---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new AppRoleAssignment
{
	PrincipalId = Guid.Parse("7679d9a4-2323-44cd-b5c2-673ec88d8b12"),
	ResourceId = Guid.Parse("076e8b57-bac8-49d7-9396-e3449b685055"),
	AppRoleId = Guid.Parse("00000000-0000-0000-0000-000000000000"),
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Groups["{group-id}"].AppRoleAssignments.PostAsync(requestBody);


```