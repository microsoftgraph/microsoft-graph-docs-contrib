---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new RoomList
{
	OdataType = "microsoft.graph.roomList",
	DisplayName = "Building 1",
	Phone = "555-555-0100",
	Address = new PhysicalAddress
	{
		Street = "4567 Main Street",
		City = "Buffalo",
		State = "NY",
		PostalCode = "98052",
		CountryOrRegion = "USA",
	},
	GeoCoordinates = new OutlookGeoCoordinates
	{
		Altitude = null,
		Latitude = 47d,
		Longitude = -122d,
		Accuracy = null,
		AltitudeAccuracy = null,
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Places["{place-id}"].PatchAsync(requestBody);


```