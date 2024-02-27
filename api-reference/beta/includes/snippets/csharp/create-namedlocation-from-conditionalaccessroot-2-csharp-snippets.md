---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new CountryNamedLocation
{
	OdataType = "#microsoft.graph.countryNamedLocation",
	DisplayName = "Named location with unknown countries and regions",
	CountriesAndRegions = new List<string>
	{
		"US",
		"GB",
	},
	IncludeUnknownCountriesAndRegions = true,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Identity.ConditionalAccess.NamedLocations.PostAsync(requestBody);


```