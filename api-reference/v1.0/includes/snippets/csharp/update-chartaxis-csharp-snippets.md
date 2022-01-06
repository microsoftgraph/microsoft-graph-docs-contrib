---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var workbookChartAxis = new WorkbookChartAxis
{
	MajorUnit = JsonDocument.Parse("{}"),
	Maximum = JsonDocument.Parse("{}"),
	Minimum = JsonDocument.Parse("{}")
};

await graphClient.Me.Drive.Items["{driveItem-id}"].Workbook.Worksheets["{workbookWorksheet-id}"].Charts["{workbookChart-id}"].Axes.ValueAxis
	.Request()
	.UpdateAsync(workbookChartAxis);

```