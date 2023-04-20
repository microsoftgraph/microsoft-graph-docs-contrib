---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UserSummary userSummary = graphClient.identityGovernance().lifecycleWorkflows().workflows("15239232-66ed-445b-8292-2f5bbb2eb833").userProcessingResults()
	.summary(UserProcessingResultSummaryParameterSet
		.newBuilder()
		.withStartDateTime(2022-10-01T00:00:00Z)
		.withEndDateTime(2022-10-30T00:00:00Z)
		.build())
	.buildRequest()
	.get();

```