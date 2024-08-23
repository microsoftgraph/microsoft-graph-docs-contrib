---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

EventCollectionResponse result = graphClient.me().events().get(requestConfiguration -> {
	requestConfiguration.queryParameters.orderby = new String []{"createdDateTime"};
	requestConfiguration.queryParameters.skip = 20;
});


```