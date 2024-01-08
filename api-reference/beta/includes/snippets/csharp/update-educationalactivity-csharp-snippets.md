---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new EducationalActivity
{
	Institution = new InstitutionData
	{
		Location = new PhysicalAddress
		{
			Type = PhysicalAddressType.Business,
			PostOfficeBox = null,
			Street = "12000 E Prospect Rd",
			City = "Fort Collins",
			State = "Colorado",
			CountryOrRegion = "USA",
			PostalCode = "80525",
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Me.Profile.EducationalActivities["{educationalActivity-id}"].PatchAsync(requestBody);


```