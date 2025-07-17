---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.DirectoryNamespace.DeletedItems.Item.Restore;

var requestBody = new RestorePostRequestBody
{
	AdditionalData = new Dictionary<string, object>
	{
		{
			"newUserPrincipalName" , "johndoe@contoso.com"
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Directory.DeletedItems["{directoryObject-id}"].Restore.PostAsync(requestBody);


```