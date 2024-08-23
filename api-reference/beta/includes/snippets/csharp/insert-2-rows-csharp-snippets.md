---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;
using Microsoft.Kiota.Abstractions.Serialization;

var requestBody = new WorkbookTableRow
{
	Values = new UntypedArray(new List<UntypedNode>
	{
		new UntypedArray(new List<UntypedNode>
		{
			new UntypedDouble(1),
			new UntypedDouble(2),
			new UntypedDouble(3),
		}),
		new UntypedArray(new List<UntypedNode>
		{
			new UntypedDouble(4),
			new UntypedDouble(5),
			new UntypedDouble(6),
		}),
	}),
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Drives["{drive-id}"].Items["{driveItem-id}"].Workbook.Tables["{workbookTable-id}"].Rows.PostAsync(requestBody);


```