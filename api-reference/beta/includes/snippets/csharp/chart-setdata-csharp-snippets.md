---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Drives.Item.Items.Item.Workbook.Worksheets.Item.Charts.Item.SetData;
using Microsoft.Kiota.Abstractions.Serialization;

var requestBody = new SetDataPostRequestBody
{
	SourceData = new UntypedString("sourceData-value"),
	SeriesBy = "seriesBy-value",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.Drives["{drive-id}"].Items["{driveItem-id}"].Workbook.Worksheets["{workbookWorksheet-id}"].Charts["{workbookChart-id}"].SetData.PostAsync(requestBody);


```