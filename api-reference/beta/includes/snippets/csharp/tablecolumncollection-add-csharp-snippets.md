---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Drives.Item.Items.Item.Workbook.Tables.Item.Columns.Add;
using Microsoft.Kiota.Abstractions.Serialization;

var requestBody = new AddPostRequestBody
{
	Index = new IndexObject
	{
	},
	Values = new UntypedArray(new List<UntypedNode>
	{
		new UntypedObject(new Dictionary<string, UntypedNode>
		{
		}),
	}),
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Drives["{drive-id}"].Items["{driveItem-id}"].Workbook.Tables["{workbookTable-id}"].Columns.Add.PostAsync(requestBody);


```