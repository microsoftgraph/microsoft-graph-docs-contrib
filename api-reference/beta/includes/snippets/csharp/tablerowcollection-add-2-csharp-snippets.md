---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Drives.Item.Items.Item.Workbook.Tables.Item.Rows.Add;

var requestBody = new AddPostRequestBody
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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Drives["{drive-id}"].Items["{driveItem-id}"].Workbook.Tables["{workbookTable-id}"].Rows.Add.PostAsync(requestBody);


```