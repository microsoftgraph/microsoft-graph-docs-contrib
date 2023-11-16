---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Me.AssignLicense;
using Microsoft.Graph.Models;

var requestBody = new AssignLicensePostRequestBody
{
	AddLicenses = new List<AssignedLicense>
	{
		new AssignedLicense
		{
			DisabledPlans = new List<Guid?>
			{
				Guid.Parse("11b0131d-43c8-4bbb-b2c8-e80f9a50834a"),
			},
			SkuId = Guid.Parse("45715bb8-13f9-4bf6-927f-ef96c102d394"),
		},
	},
	RemoveLicenses = new List<Guid?>
	{
		Guid.Parse("bea13e0c-3828-4daa-a392-28af7ff61a0f"),
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Me.AssignLicense.PostAsync(requestBody);


```