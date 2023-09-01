---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Drives.Item.Items.Item.Checkin.CheckinPostRequestBody
{
	Comment = "Updating the latest guidelines",
};
await graphClient.Drives["{drive-id}"].Items["{driveItem-id}"].Checkin.PostAsync(requestBody);


```