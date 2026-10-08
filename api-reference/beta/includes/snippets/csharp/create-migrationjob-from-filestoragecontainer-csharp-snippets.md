---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new SharePointMigrationJob
{
	ContainerInfo = new SharePointMigrationContainerInfo
	{
		DataContainerUri = "https://spoxxx.blob.core.windows.net/data?sp=rw&sig=",
		MetadataContainerUri = "https://spoxxx.blob.core.windows.net/metadata?sp=rw&sig=",
		EncryptionKey = "base64 encoded key for AES-256-CBC encryption",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Storage.FileStorage.Containers["{fileStorageContainer-id}"].MigrationJobs.PostAsync(requestBody);


```