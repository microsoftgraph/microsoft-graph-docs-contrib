---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new Permission
{
	Roles = new List<string>
	{
		"write",
	},
	GrantedTo = new IdentitySet
	{
		Application = new Identity
		{
			Id = "89ea5c94-7736-4e25-95ad-3fa95f62b66e",
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Sites["{site-id}"].Permissions.PostAsync(requestBody);


```