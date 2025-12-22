---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Floor place = new Floor();
place.setOdataType("microsoft.graph.floor");
place.setDisplayName("F1");
place.setParentId("767a31a7-6987-41c9-b829-ab351b8aab53");
Place result = graphClient.places().post(place);


```