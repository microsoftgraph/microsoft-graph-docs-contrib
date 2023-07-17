---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AccessReviewInstanceDecisionItemFilterByCurrentUserCollectionPage filterByCurrentUser = graphClient.identityGovernance().accessReviews().decisions()
	.filterByCurrentUser(AccessReviewInstanceDecisionItemFilterByCurrentUserParameterSet
		.newBuilder()
		.withOn('reviewer')
		.build())
	.buildRequest()
	.expand("instance($expand=definition)")
	.get();

```