---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Building place = new Building();
place.setOdataType("microsoft.graph.building");
place.setDisplayName("B001");
Place result = graphClient.places().post(place);


```