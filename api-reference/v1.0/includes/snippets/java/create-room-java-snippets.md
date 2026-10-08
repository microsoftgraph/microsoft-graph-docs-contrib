---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Room place = new Room();
place.setOdataType("microsoft.graph.room");
place.setDisplayName("Conf Room 4/3.3G11");
place.setParentId("46ef7aed-5d94-4fd4-ae03-b333bc7a6955");
place.setBookingType(BookingType.Standard);
Place result = graphClient.places().post(place);


```