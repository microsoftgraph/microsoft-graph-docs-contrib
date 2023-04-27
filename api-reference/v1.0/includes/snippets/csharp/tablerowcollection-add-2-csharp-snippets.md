---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Drives.Item.Items.Item.Workbook.Tables.Item.Rows.Add.AddPostRequestBody
{
	Index = 5,
	Values = new List<List<1>>
	{
		new List<1>
		{
			1,
			2,
			3,
		},
		new List<4>
		{
			4,
			5,
			6,
		},
	},
};
var result = await graphClient.Drives["{drive-id}"].Items["{driveItem-id}"].Workbook.Tables["{workbookTable-id}"].Rows.Add.PostAsync(requestBody);


```