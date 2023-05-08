---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Drives.Item.Items.Item.Workbook.Worksheets.Item.RangeNamespace.Range()GetRequestBody
{
	AdditionalData = new Dictionary<string, object>
	{
		{
			"address" , "address-value"
		},
	},
};
var result = await graphClient.Drives["{drive-id}"].Items["{driveItem-id}"].Workbook.Worksheets["{workbookWorksheet-id}"].Range.GetAsync(requestBody);


```