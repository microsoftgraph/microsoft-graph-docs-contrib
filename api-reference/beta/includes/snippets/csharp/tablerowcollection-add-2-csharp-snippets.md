---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Drives.Item.Items.Item.Workbook.Tables.Item.Rows.Add.AddPostRequestBody
{
	Index = null,
	Values = new List<List<Number>>
	{
		new List<Number>
		{
			1,
			2,
			3,
		},
		new List<Number>
		{
			4,
			5,
			6,
		},
	},
};
var result = await graphClient.Drives["{drive-id}"].Items["{driveItem-id}"].Workbook.Tables["{workbookTable-id}"].Rows.Add.PostAsync(requestBody);


```