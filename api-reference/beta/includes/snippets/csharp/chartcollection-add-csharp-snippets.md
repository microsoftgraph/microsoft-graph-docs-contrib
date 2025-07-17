---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Drives.Item.Items.Item.Workbook.Worksheets.Item.Charts.Add;
using Microsoft.Kiota.Abstractions.Serialization;

var requestBody = new AddPostRequestBody
{
	Type = "ColumnStacked",
	SourceData = new UntypedString("A1:B1"),
	SeriesBy = "Auto",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Drives["{drive-id}"].Items["{driveItem-id}"].Workbook.Worksheets["{workbookWorksheet-id}"].Charts.Add.PostAsync(requestBody);


```