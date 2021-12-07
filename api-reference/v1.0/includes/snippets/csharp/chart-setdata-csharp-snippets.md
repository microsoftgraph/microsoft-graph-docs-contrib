---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var sourceData = JsonDocument.Parse(@"""sourceData-value""");

var seriesBy = "seriesBy-value";

await graphClient.Me.Drive.Items["{driveItem-id}"].Workbook.Worksheets["{workbookWorksheet-id}"].Charts["{workbookChart-id}"]
	.SetData(seriesBy,sourceData)
	.Request()
	.PostAsync();

```