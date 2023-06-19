---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new DriveItem
{
	ParentReference = new ItemReference
	{
		Id = "{new-parent-folder-id}",
	},
	Name = "new-item-name.txt",
};
var result = await graphClient.Drives["{drive-id}"].Items["{driveItem-id}"].PatchAsync(requestBody);


```