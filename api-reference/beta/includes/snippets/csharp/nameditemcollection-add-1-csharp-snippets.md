---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Drives.Item.Items.Item.Workbook.Names.Add.AddPostRequestBody
{
	Name = "test5",
	Reference = "=Sheet1!$F$15:$N$27",
	Comment = "Comment for the named item",
};
var result = await graphClient.Drives["{drive-id}"].Items["{driveItem-id}"].Workbook.Names.Add.PostAsync(requestBody);


```