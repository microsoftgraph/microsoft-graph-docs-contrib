---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new FileStorageContainerType
{
	OdataType = "#microsoft.graph.fileStorageContainerType",
	Settings = new FileStorageContainerTypeSettings
	{
		UrlTemplate = "https://app.contoso.com/redirect?tenant={tenant-id}&drive={drive-id}&folder={folder-id}&item={item-id}",
		IsItemVersioningEnabled = true,
		IsSharingRestricted = false,
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Storage.FileStorage.ContainerTypes["{fileStorageContainerType-id}"].PatchAsync(requestBody);


```