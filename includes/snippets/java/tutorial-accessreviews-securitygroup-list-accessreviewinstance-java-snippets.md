---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AccessReviewInstanceCollectionPage instances = graphClient.identityGovernance().accessReviews().definitions("2d56c364-0695-4ec6-8b92-4c1db7c80f1b").instances()
	.buildRequest()
	.get();

```