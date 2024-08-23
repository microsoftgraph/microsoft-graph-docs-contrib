---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

RoomList place = new RoomList();
place.setOdataType("microsoft.graph.roomList");
place.setDisplayName("Building 1");
place.setPhone("555-555-0100");
PhysicalAddress address = new PhysicalAddress();
address.setStreet("4567 Main Street");
address.setCity("Buffalo");
address.setState("NY");
address.setPostalCode("98052");
address.setCountryOrRegion("USA");
place.setAddress(address);
OutlookGeoCoordinates geoCoordinates = new OutlookGeoCoordinates();
geoCoordinates.setAltitude(null);
geoCoordinates.setLatitude(47d);
geoCoordinates.setLongitude(-122d);
geoCoordinates.setAccuracy(null);
geoCoordinates.setAltitudeAccuracy(null);
place.setGeoCoordinates(geoCoordinates);
Place result = graphClient.places().byPlaceId("{place-id}").patch(place);


```