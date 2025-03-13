---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Drives.Item.Items.Item.Workbook.Worksheets.Item.Protection.Protect;
using Microsoft.Graph.Models;

var requestBody = new ProtectPostRequestBody
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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.Drives["{drive-id}"].Items["{driveItem-id}"].Workbook.Worksheets["{workbookWorksheet-id}"].Protection.Protect.PostAsync(requestBody);


```