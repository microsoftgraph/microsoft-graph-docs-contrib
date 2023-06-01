---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

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
var result = await graphClient.Security.SecureScoreControlProfiles["{secureScoreControlProfile-id}"].PatchAsync(requestBody);


```