---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AccessReviewInstanceDecisionItemFilterByCurrentUserCollectionPage filterByCurrentUser = graphClient.identityGovernance().accessReviews().definitions("0185aab8-9a7e-44b5-ae36-41b923c3bf87").instances("1234aab8-9a7e-5678-ae36-41b923c3bf87").stages("9458f255-dff2-4d86-9a05-69438f49d7f8").decisions()
	.filterByCurrentUser(AccessReviewInstanceDecisionItemFilterByCurrentUserParameterSet
		.newBuilder()
		.withOn('reviewer')
		.build())
	.buildRequest()
	.get();

```