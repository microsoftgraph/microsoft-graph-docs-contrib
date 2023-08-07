---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Me.AssignLicense.AssignLicensePostRequestBody
{
	AddLicenses = new List<AssignedLicense>
	{
	},
	RemoveLicenses = new List<Guid?>
	{
		Guid.Parse("f30db892-07e9-47e9-837c-80727f46fd3d"),
		Guid.Parse("84a661c4-e949-4bd2-a560-ed7766fcaf2b"),
	},
};
var result = await graphClient.Me.AssignLicense.PostAsync(requestBody);


```