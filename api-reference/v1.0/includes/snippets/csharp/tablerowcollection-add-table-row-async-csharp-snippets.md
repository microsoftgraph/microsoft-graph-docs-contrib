---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new WorkbookTableRow
{
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
var result = await graphClient.Drives["{drive-id}"].Items["{driveItem-id}"].Workbook.Tables["{workbookTable-id}"].Rows.PostAsync(requestBody, (requestConfiguration) =>
{
	requestConfiguration.Headers.Add("Prefer", "respond-async");
	requestConfiguration.Headers.Add("Workbook-Session-Id", "{Workbook-Session-Id}");
});


```