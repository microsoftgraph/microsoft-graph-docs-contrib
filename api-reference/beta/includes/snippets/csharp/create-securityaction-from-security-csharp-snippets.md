---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Security.SecurityActions.PostAsync(requestBody);


```