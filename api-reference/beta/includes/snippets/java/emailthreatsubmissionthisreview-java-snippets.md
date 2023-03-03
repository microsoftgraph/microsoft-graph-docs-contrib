---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String category = "phishing";

graphClient.security().threatSubmission().emailThreats("49c5ef5b-1f65-444a-e6b9-08d772ea2059")
	.review(ThreatSubmissionReviewParameterSet
		.newBuilder()
		.withCategory(category)
		.build())
	.buildRequest()
	.post();

```