---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new SecureScoreControlProfile
{
	VendorInformation = new SecurityVendorInformation
	{
		Provider = "SecureScore",
		ProviderVersion = null,
		SubProvider = null,
		Vendor = "Microsoft",
	},
	AdditionalData = new Dictionary<string, object>
	{
		{
			"assignedTo" , ""
		},
		{
			"comment" , "control is reviewed"
		},
		{
			"state" , "Reviewed"
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Security.SecureScoreControlProfiles["{secureScoreControlProfile-id}"].PatchAsync(requestBody);


```