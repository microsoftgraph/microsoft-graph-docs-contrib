---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AccessReviewCollectionResponse result = graphClient.accessReviews().get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = "businessFlowTemplateId eq '6e4f3d20-c5c3-407f-9695-8460952bcc68'";
	requestConfiguration.queryParameters.top = 100;
	requestConfiguration.queryParameters.skip = 0;
});


```