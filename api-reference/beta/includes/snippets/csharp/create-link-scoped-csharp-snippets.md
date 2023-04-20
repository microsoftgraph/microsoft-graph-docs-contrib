---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Drives.Item.Items.Item.CreateLink.CreateLinkPostRequestBody
{
	Type = "edit",
	Scope = "organization",
};
var result = await graphClient.Drives["{drive-id}"].Items["{driveItem-id}"].CreateLink.PostAsync(requestBody);


```