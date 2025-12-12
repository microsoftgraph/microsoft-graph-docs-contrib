---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Section place = new Section();
place.setOdataType("microsoft.graph.section");
place.setLabel("discuss area");
Place result = graphClient.places().byPlaceId("{place-id}").patch(place);


```