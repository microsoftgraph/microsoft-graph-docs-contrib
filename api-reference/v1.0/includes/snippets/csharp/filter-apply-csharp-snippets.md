---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Drives.Item.Items.Item.Workbook.Tables.Item.Columns.Item.Filter.Apply.ApplyPostRequestBody
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
await graphClient.Drives["{drive-id}"].Items["{driveItem-id}"].Workbook.Tables["{workbookTable-id}"].Columns["{workbookTableColumn-id}"].Filter.Apply.PostAsync(requestBody);


```