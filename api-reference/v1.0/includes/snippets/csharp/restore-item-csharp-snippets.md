---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Drives.Item.Items.Item.Restore.RestorePostRequestBody
{
	ParentReference = new ItemReference
	{
		Id = "String",
	},
	Name = "String",
};
var result = await graphClient.Drives["{drive-id}"].Items["{driveItem-id}"].Restore.PostAsync(requestBody);


```