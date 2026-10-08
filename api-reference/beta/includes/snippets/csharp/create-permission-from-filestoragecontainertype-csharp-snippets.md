---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new Permission
{
	Roles = new List<string>
	{
		"owner",
	},
	GrantedToV2 = new SharePointIdentitySet
	{
		User = new Identity
		{
			Id = "11111111-1111-1111-1111-111111111111",
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Storage.FileStorage.ContainerTypes["{fileStorageContainerType-id}"].Permissions.PostAsync(requestBody);


```