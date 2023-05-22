---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AccessReviewInstanceDecisionItemCollectionPage decisions = graphClient.identityGovernance().accessReviews().definitions("c22ae540-b89a-4d24-bac0-4ef35e6591ea").instances("6392b1a7-9c25-4844-83e5-34e23c88e16a").decisions()
	.buildRequest()
	.get();

```