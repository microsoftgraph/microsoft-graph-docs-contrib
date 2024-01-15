---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Drives.Item.Items.Item.Restore;
using Microsoft.Graph.Beta.Models;

var requestBody = new RestorePostRequestBody
{
	ParentReference = new ItemReference
	{
		Id = "String",
	},
	Name = "String",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Drives["{drive-id}"].Items["{driveItem-id}"].Restore.PostAsync(requestBody);


```