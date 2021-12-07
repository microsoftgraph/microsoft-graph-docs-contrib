---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var startCell = JsonDocument.Parse(@"""startCell-value""");

var endCell = JsonDocument.Parse(@"""endCell-value""");

await graphClient.Me.Drive.Items["{driveItem-id}"].Workbook.Worksheets["{workbookWorksheet-id}"].Charts["{workbookChart-id}"]
	.SetPosition(startCell,endCell)
	.Request()
	.PostAsync();

```