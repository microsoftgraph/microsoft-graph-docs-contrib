---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Desk place = new Desk();
place.setOdataType("microsoft.graph.desk");
place.setDisplayName("D1");
place.setParentId("1ad0f725-6885-49c5-9a47-3b22a1f9409d");
Place result = graphClient.places().post(place);


```