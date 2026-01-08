---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Floor place = new Floor();
place.setOdataType("microsoft.graph.floor");
place.setIsWheelChairAccessible(true);
place.setSortOrder(2);
Place result = graphClient.places().byPlaceId("{place-id}").patch(place);


```