---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

DeviceCollectionResponse result = graphClient.devices().get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = "extensionAttributes/extensionAttribute1 eq 'BYOD-Device'";
	requestConfiguration.queryParameters.count = true;
	requestConfiguration.headers.add("ConsistencyLevel", "eventual");
});


```