---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Drives.Item.Items.Item.Workbook.Worksheets.Item.Charts.Item.SetPosition.SetPositionPostRequestBody
{
	StartCell = "startCell-value",
	EndCell = "endCell-value",
};
await graphClient.Drives["{drive-id}"].Items["{driveItem-id}"].Workbook.Worksheets["{workbookWorksheet-id}"].Charts["{workbookChart-id}"].SetPosition.PostAsync(requestBody);


```