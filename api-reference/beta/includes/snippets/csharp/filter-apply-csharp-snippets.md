---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Drives.Item.Items.Item.Workbook.Tables.Item.Columns.Item.Filter.Apply;
using Microsoft.Graph.Beta.Models;

var requestBody = new ApplyPostRequestBody
{
	Criteria = new WorkbookFilterCriteria
	{
		Criterion1 = "criterion1-value",
		Criterion2 = "criterion2-value",
		Color = "color-value",
		Operator = new Operator
		{
		},
		Icon = new WorkbookIcon
		{
			Set = "set-value",
			Index = 99,
		},
		DynamicCriteria = "dynamicCriteria-value",
		Values = new Json
		{
		},
		FilterOn = "filterOn-value",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.Drives["{drive-id}"].Items["{driveItem-id}"].Workbook.Tables["{workbookTable-id}"].Columns["{workbookTableColumn-id}"].Filter.Apply.PostAsync(requestBody);


```