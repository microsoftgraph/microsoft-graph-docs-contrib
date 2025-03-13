---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new AppRoleAssignment
{
	PrincipalId = Guid.Parse("cde330e5-2150-4c11-9c5b-14bfdc948c79"),
	ResourceId = Guid.Parse("8e881353-1735-45af-af21-ee1344582a4d"),
	AppRoleId = Guid.Parse("00000000-0000-0000-0000-000000000000"),
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Users["{user-id}"].AppRoleAssignments.PostAsync(requestBody);


```