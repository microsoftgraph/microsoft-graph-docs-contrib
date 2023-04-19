---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Drives.Item.Items.Item.Copy.CopyPostRequestBody
{
	ParentReference = new ItemReference
	{
		DriveId = "6F7D00BF-FC4D-4E62-9769-6AEA81F3A21B",
		Id = "DCD0D3AD-8989-4F23-A5A2-2C086050513F",
	},
	Name = "contoso plan (copy).txt",
};
var result = await graphClient.Drives["{drive-id}"].Items["{driveItem-id}"].Copy.PostAsync(requestBody);


```