---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

GroupCollectionResponse result = graphClient.groups().get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = "createdDateTime ge 2021-11-01";
	requestConfiguration.queryParameters.count = true;
	requestConfiguration.headers.add("ConsistencyLevel", "eventual");
});


```