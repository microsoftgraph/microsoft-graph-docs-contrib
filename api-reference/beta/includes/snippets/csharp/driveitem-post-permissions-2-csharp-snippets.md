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
		SiteGroup = new SharePointIdentity
		{
			Id = "10",
			DisplayName = "Internal Collaborators",
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