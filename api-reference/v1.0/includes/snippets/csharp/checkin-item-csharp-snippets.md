---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Drives.Item.Items.Item.Checkin.CheckinPostRequestBody
{
	Comment = "Updating the latest guidelines",
};
await graphClient.Drives["{drive-id}"].Items["{driveItem-id}"].Checkin.PostAsync(requestBody);


```