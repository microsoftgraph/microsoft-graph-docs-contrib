---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ApplicationCollectionResponse result = graphClient.applications().get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = "owners/$count eq 0 or owners/$count eq 1";
	requestConfiguration.queryParameters.count = true;
	requestConfiguration.queryParameters.select = new String []{"id", "displayName"};
	requestConfiguration.headers.add("ConsistencyLevel", "eventual");
});


```