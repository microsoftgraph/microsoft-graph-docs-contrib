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
		"reader",
	},
	GrantedToV2 = new SharePointIdentitySet
	{
		User = new Identity
		{
			AdditionalData = new Dictionary<string, object>
			{
				{
					"userPrincipalName" , "jacob@fabrikam.com"
				},
			},
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Storage.FileStorage.Containers["{fileStorageContainer-id}"].Permissions.PostAsync(requestBody);


```