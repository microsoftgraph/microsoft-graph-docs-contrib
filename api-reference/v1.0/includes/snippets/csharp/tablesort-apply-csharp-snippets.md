---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Drives.Item.Items.Item.Workbook.Tables.Item.Sort.Apply.ApplyPostRequestBody
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
await graphClient.Drives["{drive-id}"].Items["{driveItem-id}"].Workbook.Tables["{workbookTable-id}"].Sort.Apply.PostAsync(requestBody);


```