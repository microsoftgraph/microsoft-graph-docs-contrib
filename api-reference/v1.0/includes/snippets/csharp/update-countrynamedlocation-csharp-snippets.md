---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new CountryNamedLocation
{
	OdataType = "#microsoft.graph.countryNamedLocation",
	DisplayName = "Updated named location without unknown countries and regions",
	CountriesAndRegions = new List<string>
	{
		"CA",
		"IN",
	},
	IncludeUnknownCountriesAndRegions = false,
};
var result = await graphClient.Identity.ConditionalAccess.NamedLocations["{namedLocation-id}"].PatchAsync(requestBody);


```