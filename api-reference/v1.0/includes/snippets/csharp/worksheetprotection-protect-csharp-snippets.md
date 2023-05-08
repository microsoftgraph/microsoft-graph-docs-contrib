---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Drives.Item.Items.Item.Workbook.Worksheets.Item.Protection.Protect.ProtectPostRequestBody
{
	Options = new WorkbookWorksheetProtectionOptions
	{
		AllowFormatCells = true,
		AllowFormatColumns = true,
		AllowFormatRows = true,
		AllowInsertColumns = true,
		AllowInsertRows = true,
		AllowInsertHyperlinks = true,
		AllowDeleteColumns = true,
		AllowDeleteRows = true,
		AllowSort = true,
		AllowAutoFilter = true,
		AllowPivotTables = true,
	},
};
await graphClient.Drives["{drive-id}"].Items["{driveItem-id}"].Workbook.Worksheets["{workbookWorksheet-id}"].Protection.Protect.PostAsync(requestBody);


```