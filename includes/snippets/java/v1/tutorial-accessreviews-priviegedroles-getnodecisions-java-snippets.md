---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AccessReviewInstanceDecisionItemCollectionPage decisions = graphClient.identityGovernance().accessReviews().definitions("57457d7c-af59-470c-ae71-aa72c657fe0f").instances("ad0dd148-5d16-4cfd-86e9-ab502f819aaf").decisions()
	.buildRequest()
	.get();

```