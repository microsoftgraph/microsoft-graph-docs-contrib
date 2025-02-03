---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

var result = graphClient.identityGovernance().accessReviews().definitions().byAccessReviewScheduleDefinitionId("{accessReviewScheduleDefinition-id}").instances().byAccessReviewInstanceId("{accessReviewInstance-id}").stages().byAccessReviewStageId("{accessReviewStage-id}").decisions().filterByCurrentUserWithOn("reviewer").get(requestConfiguration -> {
	requestConfiguration.queryParameters.select = new String []{"accessReviewId", "reviewedDateTime", "decision", "justification", "recommendation", "reviewedBy", "target"};
});


```