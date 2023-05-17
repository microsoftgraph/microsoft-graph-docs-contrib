---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Drives.Item.Items.Item.Workbook.Worksheets.Item.RangeWithAddress.Range(address='{address}')PatchRequestBody
{
	AdditionalData = new Dictionary<string, object>
	{
		{
			"values" , new List<List<string>>
			{
				new List<string>
				{
					"Hello",
					"100",
				},
				new List<string>
				{
					"1/1/2016",
					null,
				},
			}
		},
		{
			"formulas" , new List<List<Null>>
			{
				new List<Null>
				{
					null,
					null,
				},
				new List<Null>
				{
					null,
					"=B1*2",
				},
			}
		},
		{
			"numberFormat" , new List<List<Null>>
			{
				new List<Null>
				{
					null,
					null,
				},
				new List<string>
				{
					"m-ddd",
					null,
				},
			}
		},
	},
};
await graphClient.Drives["{drive-id}"].Items["{driveItem-id}"].Workbook.Worksheets["{workbookWorksheet-id}"].RangeWithAddress("{address}").PatchAsync(requestBody);


```