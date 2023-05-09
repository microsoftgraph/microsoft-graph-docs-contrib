---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Drives.Item.Items.Item.Workbook.Functions.Vlookup.VlookupPostRequestBody
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
var result = await graphClient.Drives["{drive-id}"].Items["{driveItem-id}"].Workbook.Functions.Vlookup.PostAsync(requestBody, (requestConfiguration) =>
{
	requestConfiguration.Headers.Add("workbook-session-id", "{session-id}");
});


```