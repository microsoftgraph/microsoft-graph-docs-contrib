---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AccessReviewScheduleDefinitionCollectionResponse result = graphClient.identityGovernance().accessReviews().definitions().get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = "contains(scope/microsoft.graph.accessReviewQueryScope/query, './members')";
});


```