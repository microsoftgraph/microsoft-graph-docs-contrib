---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Drives.Item.Items.Item.Copy.CopyPostRequestBody
{
	ParentReference = new ItemReference
	{
		Path = "/drive/root:/Documents",
	},
	Name = "Copy of LargeFolder1",
};
var result = await graphClient.Drives["{drive-id}"].Items["{driveItem-id}"].Copy.PostAsync(requestBody);


```