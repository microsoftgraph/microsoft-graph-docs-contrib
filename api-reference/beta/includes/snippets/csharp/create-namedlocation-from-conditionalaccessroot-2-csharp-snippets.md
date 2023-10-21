---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

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
var result = await graphClient.Identity.ConditionalAccess.NamedLocations.PostAsync(requestBody);


```