---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

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
var result = await graphClient.Places["{place-id}"].PatchAsync(requestBody);


```