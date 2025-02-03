---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AccessReviewInstanceCollectionResponse result = graphClient.me().pendingAccessReviewInstances().get(requestConfiguration -> {
	requestConfiguration.queryParameters.expand = new String []{"definition"};
	requestConfiguration.queryParameters.top = 100;
	requestConfiguration.queryParameters.skip = 0;
});


```