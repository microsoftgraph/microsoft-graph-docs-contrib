---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

WorkPosition workPosition = new WorkPosition();
workPosition.setIsCurrent(true);
WorkPosition result = graphClient.me().profile().positions().byWorkPositionId("{workPosition-id}").patch(workPosition);


```