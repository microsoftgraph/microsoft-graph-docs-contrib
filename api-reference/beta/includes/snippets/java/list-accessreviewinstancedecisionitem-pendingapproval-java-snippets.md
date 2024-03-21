---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AccessReviewInstanceDecisionItemCollectionResponse result = graphClient.me().pendingAccessReviewInstances().byAccessReviewInstanceId("{accessReviewInstance-id}").decisions().get(requestConfiguration -> {
	requestConfiguration.queryParameters.top = 100;
	requestConfiguration.queryParameters.skip = 0;
});


```