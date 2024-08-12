---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Drives.Item.Items.Item.Copy;
using Microsoft.Graph.Beta.Models;

var requestBody = new CopyPostRequestBody
{
	ParentReference = new ItemReference
	{
		DriveId = "6F7D00BF-FC4D-4E62-9769-6AEA81F3A21B",
		Id = "DCD0D3AD-8989-4F23-A5A2-2C086050513F",
	},
	Name = "contoso plan (copy).txt",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Drives["{drive-id}"].Items["{driveItem-id}"].Copy.PostAsync(requestBody);


```