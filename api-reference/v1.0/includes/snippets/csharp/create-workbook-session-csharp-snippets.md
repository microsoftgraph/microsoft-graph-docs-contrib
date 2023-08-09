---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Drives.Item.Items.Item.Workbook.CreateSession.CreateSessionPostRequestBody
{
	PersistChanges = true,
};
var result = await graphClient.Drives["{drive-id}"].Items["{driveItem-id}"].Workbook.CreateSession.PostAsync(requestBody);


```