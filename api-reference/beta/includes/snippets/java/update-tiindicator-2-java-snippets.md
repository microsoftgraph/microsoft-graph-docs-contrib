---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

TiIndicator tiIndicator = new TiIndicator();
tiIndicator.setAdditionalInformation("additionalInformation-after-update");
tiIndicator.setConfidence(42);
tiIndicator.setDescription("description-after-update");
TiIndicator result = graphClient.security().tiIndicators().byTiIndicatorId("{tiIndicator-id}").patch(tiIndicator, requestConfiguration -> {
	requestConfiguration.headers.add("Prefer", "return=representation");
});


```