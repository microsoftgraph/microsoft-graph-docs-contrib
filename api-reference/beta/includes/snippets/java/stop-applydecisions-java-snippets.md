---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.identityGovernance().accessReviews().definitions("2b83cc42-09db-46f6-8c6e-16fec466a82d").instances("5d431f4b-56f2-4a50-938b-fb1e4e2c91b9")
	.stopApplyDecisions()
	.buildRequest()
	.post();

```