---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new WorkbookChartFont
{
	Bold = true,
	Color = "color-value",
	Italic = true,
	Name = "name-value",
	Size = 99d,
	Underline = "underline-value",
};
var result = await graphClient.Drives["{drive-id}"].Items["{driveItem-id}"].Workbook.Worksheets["{workbookWorksheet-id}"].Charts["{workbookChart-id}"].Axes.ValueAxis.Format.Font.PatchAsync(requestBody);


```