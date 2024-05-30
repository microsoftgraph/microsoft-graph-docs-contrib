---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Drives.Item.Items.Item.Workbook.Tables.Item.Sort.Apply;
using Microsoft.Graph.Models;

var requestBody = new ApplyPostRequestBody
{
	Fields = new List<WorkbookSortField>
	{
		new WorkbookSortField
		{
			Key = 99,
			SortOn = "sortOn-value",
			Ascending = true,
			Color = "color-value",
			DataOption = "dataOption-value",
			Icon = new WorkbookIcon
			{
				Set = "set-value",
				Index = 99,
			},
		},
	},
	MatchCase = true,
	Method = "method-value",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.Drives["{drive-id}"].Items["{driveItem-id}"].Workbook.Tables["{workbookTable-id}"].Sort.Apply.PostAsync(requestBody);


```