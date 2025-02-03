---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

GroupCollectionResponse result = graphClient.devices().byDeviceId("{device-id}").memberOf().graphGroup().get(requestConfiguration -> {
	requestConfiguration.queryParameters.count = true;
	requestConfiguration.queryParameters.orderby = new String []{"displayName"};
	requestConfiguration.queryParameters.filter = "startswith(displayName, 'A')";
	requestConfiguration.headers.add("ConsistencyLevel", "eventual");
});


```