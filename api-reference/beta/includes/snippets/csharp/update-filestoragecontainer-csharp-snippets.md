---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new FileStorageContainer
{
	DisplayName = "Updated Name",
	Description = "Updated Description",
	Settings = new FileStorageContainerSettings
	{
		IsOcrEnabled = false,
		ItemDefaultSensitivityLabelId = "3d8789ae-7375-4ded-8eeb-d6bc226e42fb",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Storage.FileStorage.Containers["{fileStorageContainer-id}"].PatchAsync(requestBody);


```