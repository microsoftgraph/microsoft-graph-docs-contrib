---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

GroupCollectionResponse result = graphClient.groups().get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = "mailEnabled eq true";
	requestConfiguration.queryParameters.search = "\"displayName:OneVideo\"";
	requestConfiguration.headers.add("ConsistencyLevel", "eventual");
});


```