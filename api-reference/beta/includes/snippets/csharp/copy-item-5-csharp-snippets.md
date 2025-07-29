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
		DriveId = "b!s8RqPCGh0ESQS2EYnKM0IKS3lM7GxjdAviiob7oc5pXv_0LiL-62Qq3IXyrXnEop",
		Id = "DCD0D3AD-8989-4F23-A5A2-2C086050513F",
	},
	IncludeAllVersionHistory = true,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Drives["{drive-id}"].Items["{driveItem-id}"].Copy.PostAsync(requestBody);


```