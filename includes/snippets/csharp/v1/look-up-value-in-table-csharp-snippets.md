---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Drives.Item.Items.Item.Workbook.Functions.Vlookup;
using Microsoft.Graph.Models;

var requestBody = new VlookupPostRequestBody
{
	LookupValue = "pear",
	TableArray = new Json
	{
		AdditionalData = new Dictionary<string, object>
		{
			{
				"Address" , "Sheet1!B2:C7"
			},
		},
	},
	ColIndexNum = 2,
	RangeLookup = false,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Drives["{drive-id}"].Items["{driveItem-id}"].Workbook.Functions.Vlookup.PostAsync(requestBody, (requestConfiguration) =>
{
	requestConfiguration.Headers.Add("workbook-session-id", "{session-id}");
});


```