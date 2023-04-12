---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Drives.Item.Items.Item.Workbook.Worksheets.Item.Charts.Add.AddPostRequestBody
{
	Type = "ColumnStacked",
	SourceData = "A1:B1",
	SeriesBy = "Auto",
};
var result = await graphClient.Drives["{drive-id}"].Items["{driveItem-id}"].Workbook.Worksheets["{workbookWorksheet-id}"].Charts.Add.PostAsync(requestBody);


```