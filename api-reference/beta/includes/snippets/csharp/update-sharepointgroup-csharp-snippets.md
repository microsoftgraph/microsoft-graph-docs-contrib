---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new SharePointGroup
{
	OdataType = "#microsoft.graph.sharePointGroup",
	Title = "This is the new group title",
	Description = "Updated group description",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Storage.FileStorage.Containers["{fileStorageContainer-id}"].SharePointGroups["{sharePointGroup-id}"].PatchAsync(requestBody);


```