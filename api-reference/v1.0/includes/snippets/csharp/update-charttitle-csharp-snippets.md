---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new WorkbookChartTitle
{
	Overlay = true,
	Text = "text-value",
	Visible = true,
};
var result = await graphClient.Drives["{drive-id}"].Items["{driveItem-id}"].Workbook.Worksheets["{workbookWorksheet-id}"].Charts["{workbookChart-id}"].Title.PatchAsync(requestBody);


```