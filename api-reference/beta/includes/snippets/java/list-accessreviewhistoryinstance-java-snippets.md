---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AccessReviewHistoryInstanceCollectionPage instances = graphClient.identityGovernance().accessReviews().historyDefinitions("90e28cb7-4b9a-48f7-ba4e-a2756fda01b2").instances()
	.buildRequest()
	.get();

```