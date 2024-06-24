---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

GroupCollectionResponse result = graphClient.directory().deletedItems().graphGroup().get(requestConfiguration -> {
	requestConfiguration.queryParameters.count = true;
	requestConfiguration.queryParameters.orderby = new String []{"deletedDateTime asc"};
	requestConfiguration.queryParameters.select = new String []{"id", "displayName", "deletedDateTime"};
	requestConfiguration.headers.add("ConsistencyLevel", "eventual");
});


```