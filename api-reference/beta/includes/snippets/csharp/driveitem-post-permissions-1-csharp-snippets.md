---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new Permission
{
	GrantedToIdentitiesV2 = new SharePointIdentitySet
	{
		Application = new Identity
		{
			Id = "89ea5c94-7736-4e25-95ad-3fa95f62b66e",
			DisplayName = "Contoso Time Manager App",
		},
	},
	Roles = new List<string>
	{
		"write",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Drives["{drive-id}"].Items["{driveItem-id}"].Permissions.PostAsync(requestBody);


```