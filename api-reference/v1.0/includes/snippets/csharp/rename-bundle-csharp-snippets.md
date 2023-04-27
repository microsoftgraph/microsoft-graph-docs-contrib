---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new DriveItem
{
	Name = "Shared legal agreements",
};
var result = await graphClient.Drives["{drive-id}"].Items["{driveItem-id}"].PatchAsync(requestBody);


```