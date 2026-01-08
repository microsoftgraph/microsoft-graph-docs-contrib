---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Section place = new Section();
place.setOdataType("microsoft.graph.section");
place.setDisplayName("S1");
place.setParentId("46ef7aed-5d94-4fd4-ae03-b333bc7a6955");
Place result = graphClient.places().post(place);


```