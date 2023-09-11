---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new SecurityAction
{
	Name = "BlockIp",
	ActionReason = "Test",
	Parameters = new List<KeyValuePair>
	{
		new KeyValuePair
		{
			Name = "IP",
			Value = "1.2.3.4",
		},
	},
	VendorInformation = new SecurityVendorInformation
	{
		Provider = "Windows Defender ATP",
		Vendor = "Microsoft",
	},
};
var result = await graphClient.Security.SecurityActions.PostAsync(requestBody);


```