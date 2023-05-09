---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new WorkbookChartDataLabels
{
	Position = "position-value",
	ShowValue = true,
	ShowSeriesName = true,
	ShowCategoryName = true,
	ShowLegendKey = true,
};
var result = await graphClient.Drives["{drive-id}"].Items["{driveItem-id}"].Workbook.Worksheets["{workbookWorksheet-id}"].Charts["{workbookChart-id}"].DataLabels.PatchAsync(requestBody);


```