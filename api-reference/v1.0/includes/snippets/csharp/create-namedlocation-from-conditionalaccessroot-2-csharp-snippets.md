---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new NamedLocation
{
	OdataType = "#microsoft.graph.countryNamedLocation",
	DisplayName = "Named location with unknown countries and regions",
	AdditionalData = new Dictionary<string, object>
	{
		{
			"countriesAndRegions" , new List<string>
			{
				"US",
				"GB",
			}
		},
		{
			"includeUnknownCountriesAndRegions" , true
		},
	},
};
var result = await graphClient.Identity.ConditionalAccess.NamedLocations.PostAsync(requestBody);


```