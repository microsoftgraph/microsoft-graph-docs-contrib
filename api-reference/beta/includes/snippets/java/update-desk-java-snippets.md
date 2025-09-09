---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Desk place = new Desk();
place.setOdataType("microsoft.graph.desk");
DropInPlaceMode mode = new DropInPlaceMode();
mode.setOdataType("microsoft.graph.dropInPlaceMode");
place.setMode(mode);
Place result = graphClient.places().byPlaceId("{place-id}").patch(place);


```