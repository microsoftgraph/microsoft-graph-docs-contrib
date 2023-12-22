---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new ItemAddress
{
	DisplayName = "Home",
	Detail = new PhysicalAddress
	{
		Type = PhysicalAddressType.Home,
		PostOfficeBox = null,
		Street = "221B Baker Street",
		City = "London",
		State = null,
		CountryOrRegion = "United Kingdom",
		PostalCode = "E14 3TD",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Me.Profile.Addresses.PostAsync(requestBody);


```