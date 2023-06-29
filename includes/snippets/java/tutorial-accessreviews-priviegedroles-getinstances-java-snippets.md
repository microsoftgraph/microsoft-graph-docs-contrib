---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AccessReviewInstanceCollectionPage instances = graphClient.identityGovernance().accessReviews().definitions("57457d7c-af59-470c-ae71-aa72c657fe0f").instances()
	.buildRequest()
	.get();

```