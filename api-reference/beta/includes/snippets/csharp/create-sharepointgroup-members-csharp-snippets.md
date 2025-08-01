---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new SharePointGroupMember
{
	OdataType = "#microsoft.graph.sharePointGroupMember",
	Identity = new SharePointIdentitySet
	{
		User = new Identity
		{
			AdditionalData = new Dictionary<string, object>
			{
				{
					"userPrincipalName" , "john.smith@contoso.com"
				},
			},
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Storage.FileStorage.Containers["{fileStorageContainer-id}"].SharePointGroups["{sharePointGroup-id}"].Members.PostAsync(requestBody);


```