---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Place place = new Place();
place.setOdataType("microsoft.graph.desk");
HashMap<String, Object> additionalData = new HashMap<String, Object>();
 mode = new ();
mode.setOdataType("microsoft.graph.dropInPlaceMode");
additionalData.put("mode", mode);
place.setAdditionalData(additionalData);
Place result = graphClient.places().byPlaceId("{place-id}").patch(place);


```