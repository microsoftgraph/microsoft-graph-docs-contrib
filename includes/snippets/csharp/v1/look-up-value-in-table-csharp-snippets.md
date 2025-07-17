---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Drives.Item.Items.Item.Workbook.Functions.Vlookup;
using Microsoft.Kiota.Abstractions.Serialization;

var requestBody = new VlookupPostRequestBody
{
	LookupValue = new UntypedString("pear"),
	TableArray = new UntypedObject(new Dictionary<string, UntypedNode>
	{
		{
			"Address", new UntypedString("Sheet1!B2:C7")
		},
	}),
	ColIndexNum = new UntypedDouble(2),
	RangeLookup = new UntypedBoolean(false),
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Drives["{drive-id}"].Items["{driveItem-id}"].Workbook.Functions.Vlookup.PostAsync(requestBody, (requestConfiguration) =>
{
	requestConfiguration.Headers.Add("workbook-session-id", "{session-id}");
});


```