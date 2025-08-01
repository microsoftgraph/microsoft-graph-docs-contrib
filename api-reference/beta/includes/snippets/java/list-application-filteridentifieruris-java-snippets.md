---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ApplicationCollectionResponse result = graphClient.applications().get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = "identifierUris/any(x:startswith(x,'api://'))";
	requestConfiguration.queryParameters.count = true;
	requestConfiguration.headers.add("ConsistencyLevel", "eventual");
});


```