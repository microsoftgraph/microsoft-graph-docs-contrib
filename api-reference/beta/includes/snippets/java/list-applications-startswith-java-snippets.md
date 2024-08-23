---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ApplicationCollectionResponse result = graphClient.applications().get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = "startswith(displayName, 'a')";
	requestConfiguration.queryParameters.count = true;
	requestConfiguration.queryParameters.top = 1;
	requestConfiguration.queryParameters.orderby = new String []{"displayName"};
	requestConfiguration.headers.add("ConsistencyLevel", "eventual");
});


```