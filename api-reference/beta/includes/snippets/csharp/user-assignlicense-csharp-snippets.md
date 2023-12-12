---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Me.AssignLicense;
using Microsoft.Graph.Beta.Models;

var requestBody = new AssignLicensePostRequestBody
{
	AddLicenses = new List<AssignedLicense>
	{
		new AssignedLicense
		{
			DisabledPlans = new List<Guid?>
			{
				Guid.Parse("8a256a2b-b617-496d-b51b-e76466e88db0"),
			},
			SkuId = Guid.Parse("84a661c4-e949-4bd2-a560-ed7766fcaf2b"),
		},
		new AssignedLicense
		{
			DisabledPlans = new List<string>
			{
			},
			SkuId = Guid.Parse("f30db892-07e9-47e9-837c-80727f46fd3d"),
		},
	},
	RemoveLicenses = new List<string>
	{
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Me.AssignLicense.PostAsync(requestBody);


```