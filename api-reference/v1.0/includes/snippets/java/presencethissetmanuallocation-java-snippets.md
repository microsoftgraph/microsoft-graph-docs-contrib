---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.users.item.presence.setmanuallocation.SetManualLocationPostRequestBody setManualLocationPostRequestBody = new com.microsoft.graph.users.item.presence.setmanuallocation.SetManualLocationPostRequestBody();
setManualLocationPostRequestBody.setWorkLocationType(WorkLocationType.Office);
setManualLocationPostRequestBody.setPlaceId("eb706f15-137e-4722-b4d1-b601481d9251");
graphClient.me().presence().setManualLocation().post(setManualLocationPostRequestBody);


```