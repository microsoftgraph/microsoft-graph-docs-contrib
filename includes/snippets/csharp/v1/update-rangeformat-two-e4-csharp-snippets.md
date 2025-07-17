---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new WorkbookRangeFormat
{
	ColumnWidth = 135d,
	HorizontalAlignment = "Center",
	VerticalAlignment = "Center",
	RowHeight = 49d,
	WrapText = false,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Drives["{drive-id}"].Items["{driveItem-id}"].Workbook.Worksheets["{workbookWorksheet-id}"].Range().Format.PatchAsync(requestBody);


```