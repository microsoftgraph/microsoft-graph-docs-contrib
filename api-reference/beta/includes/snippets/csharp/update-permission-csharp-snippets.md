---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Permission
{
	Roles = new List<string>
	{
		"read",
	},
};
var result = await graphClient.Drives["{drive-id}"].Items["{driveItem-id}"].Permissions["{permission-id}"].PatchAsync(requestBody);


```