---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;
using Microsoft.Kiota.Abstractions.Serialization;

var requestBody = new WorkbookChartAxis
{
	MajorUnit = new UntypedObject(new Dictionary<string, UntypedNode>
	{
	}),
	Maximum = new UntypedObject(new Dictionary<string, UntypedNode>
	{
	}),
	Minimum = new UntypedObject(new Dictionary<string, UntypedNode>
	{
	}),
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Drives["{drive-id}"].Items["{driveItem-id}"].Workbook.Worksheets["{workbookWorksheet-id}"].Charts["{workbookChart-id}"].Axes.ValueAxis.PatchAsync(requestBody);


```