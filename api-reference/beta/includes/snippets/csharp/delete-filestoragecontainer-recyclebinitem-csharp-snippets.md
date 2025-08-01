---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Storage.FileStorage.Containers.Item.RecycleBin.Items.Delete;

var requestBody = new DeletePostRequestBody
{
	Ids = new List<string>
	{
		"5d625d33-338c-4a77-a98a-3e287116440c",
		"73133853-48f2-4956-bc4a-03f8d1675042",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.Storage.FileStorage.Containers["{fileStorageContainer-id}"].RecycleBin.Items.Delete.PostAsync(requestBody);


```