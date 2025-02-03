---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Room place = new Room();
place.setOdataType("microsoft.graph.room");
place.setNickname("Conf Room");
place.setBuilding("1");
place.setLabel("100");
place.setCapacity(50);
place.setIsWheelChairAccessible(false);
Place result = graphClient.places().byPlaceId("{place-id}").patch(place);


```