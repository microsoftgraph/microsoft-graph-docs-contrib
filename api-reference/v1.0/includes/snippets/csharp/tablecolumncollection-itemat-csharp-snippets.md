---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Drives.Item.Items.Item.Workbook.Tables.Item.Columns.Item.Column
{
	AdditionalData = new Dictionary<string, object>
	{
		{
			"index" , 3
		},
	},
};
await graphClient.Drives["{drive-id}"].Items["{driveItem-id}"].Workbook.Tables["{workbookTable-id}"].Columns["{workbookTableColumn-id}"].PostAsync(requestBody);


```