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
	},
	RemoveLicenses = new List<Guid?>
	{
		Guid.Parse("f30db892-07e9-47e9-837c-80727f46fd3d"),
		Guid.Parse("84a661c4-e949-4bd2-a560-ed7766fcaf2b"),
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Me.AssignLicense.PostAsync(requestBody);


```