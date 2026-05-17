---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Workspace place = new Workspace();
place.setOdataType("microsoft.graph.workspace");
place.setNickname("Conf Room");
place.setLabel("100");
place.setCapacity(50);
place.setIsWheelChairAccessible(false);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("building", "1");
place.setAdditionalData(additionalData);
Place result = graphClient.places().byPlaceId("{place-id}").patch(place);


```