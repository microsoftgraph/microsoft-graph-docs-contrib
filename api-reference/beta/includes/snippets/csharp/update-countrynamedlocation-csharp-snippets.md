---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new NamedLocation
{
	OdataType = "#microsoft.graph.countryNamedLocation",
	DisplayName = "Updated named location without unknown countries and regions",
	AdditionalData = new Dictionary<string, object>
	{
		{
			"countriesAndRegions" , new List<string>
			{
				"CA",
				"IN",
			}
		},
		{
			"includeUnknownCountriesAndRegions" , false
		},
	},
};
var result = await graphClient.Identity.ConditionalAccess.NamedLocations["{namedLocation-id}"].PatchAsync(requestBody);


```