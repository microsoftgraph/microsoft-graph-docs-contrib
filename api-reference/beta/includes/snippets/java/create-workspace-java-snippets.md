---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Workspace place = new Workspace();
place.setOdataType("microsoft.graph.workspace");
place.setParentId("f7de7265-e420-47b4-9d49-28d728716241");
place.setDisplayName("testSpace001");
LinkedList<String> tags = new LinkedList<String>();
tags.add("test");
place.setTags(tags);
Place result = graphClient.places().post(place);


```