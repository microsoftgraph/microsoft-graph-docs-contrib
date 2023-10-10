---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UserSummary userSummary = graphClient.identityGovernance().lifecycleWorkflows().workflows("368dfba3-2303-4e02-b258-87d742187e1b").userProcessingResults()
	.summary(UserProcessingResultSummaryParameterSet
		.newBuilder()
		.withStartDateTime(2022-10-01T00:00:00Z)
		.withEndDateTime(2022-10-30T00:00:00Z)
		.build())
	.buildRequest()
	.get();

```