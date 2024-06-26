---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.communications.calls.item.addlargegalleryview.AddLargeGalleryViewPostRequestBody addLargeGalleryViewPostRequestBody = new com.microsoft.graph.communications.calls.item.addlargegalleryview.AddLargeGalleryViewPostRequestBody();
addLargeGalleryViewPostRequestBody.setClientContext("785f4929-92ca-497b-863f-c778c77c9758");
var result = graphClient.communications().calls().byCallId("{call-id}").addLargeGalleryView().post(addLargeGalleryViewPostRequestBody);


```