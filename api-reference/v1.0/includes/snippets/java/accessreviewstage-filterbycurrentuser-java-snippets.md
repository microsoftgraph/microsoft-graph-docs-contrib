---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AccessReviewStageFilterByCurrentUserCollectionPage filterByCurrentUser = graphClient.identityGovernance().accessReviews().definitions("08531375-eff6-4e21-b1a8-de0eb37ec913").instances("86889534-b102-4226-bfce-0c2aeee845df").stages()
	.filterByCurrentUser(AccessReviewStageFilterByCurrentUserParameterSet
		.newBuilder()
		.withOn('reviewer')
		.build())
	.buildRequest()
	.get();

```