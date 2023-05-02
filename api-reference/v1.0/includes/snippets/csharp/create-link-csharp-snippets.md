---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Drives.Item.Items.Item.CreateLink.CreateLinkPostRequestBody
{
	Type = "view",
	Password = "ThisIsMyPrivatePassword",
	Scope = "anonymous",
	RetainInheritedPermissions = false,
};
var result = await graphClient.Drives["{drive-id}"].Items["{driveItem-id}"].CreateLink.PostAsync(requestBody);


```