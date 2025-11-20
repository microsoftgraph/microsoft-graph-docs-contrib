---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new AppRoleAssignment
{
	OdataType = "#microsoft.graph.appRoleAssignment",
	DeletedDateTime = DateTimeOffset.Parse("String (timestamp)"),
	AppRoleId = Guid.Parse("Guid"),
	CreationTimestamp = DateTimeOffset.Parse("String (timestamp)"),
	PrincipalDisplayName = "String",
	PrincipalId = Guid.Parse("Guid"),
	PrincipalType = "String",
	ResourceDisplayName = "String",
	ResourceId = Guid.Parse("Guid"),
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Users["{user-id}"].AppRoleAssignments.PostAsync(requestBody);


```