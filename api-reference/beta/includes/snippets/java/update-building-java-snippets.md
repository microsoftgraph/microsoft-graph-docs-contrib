---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Place place = new Place();
place.setOdataType("microsoft.graph.building");
HashMap<String, Object> additionalData = new HashMap<String, Object>();
LinkedList<String> tags = new LinkedList<String>();
tags.add("most popular building");
additionalData.put("tags", tags);
place.setAdditionalData(additionalData);
Place result = graphClient.places().byPlaceId("{place-id}").patch(place);


```