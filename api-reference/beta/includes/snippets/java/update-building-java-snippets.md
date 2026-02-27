---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Building place = new Building();
place.setOdataType("microsoft.graph.building");
LinkedList<String> tags = new LinkedList<String>();
tags.add("most popular building");
place.setTags(tags);
Place result = graphClient.places().byPlaceId("{place-id}").patch(place);


```