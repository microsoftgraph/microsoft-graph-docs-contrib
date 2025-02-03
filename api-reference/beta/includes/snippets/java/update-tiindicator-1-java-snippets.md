---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

TiIndicator tiIndicator = new TiIndicator();
tiIndicator.setDescription("description-updated");
TiIndicator result = graphClient.security().tiIndicators().byTiIndicatorId("{tiIndicator-id}").patch(tiIndicator);


```