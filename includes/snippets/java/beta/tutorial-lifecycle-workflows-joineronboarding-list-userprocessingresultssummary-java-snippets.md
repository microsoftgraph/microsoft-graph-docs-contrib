---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UserSummary userSummary = graphClient.identityGovernance().lifecycleWorkflows().workflows("ea71190c-075a-4ae7-9bca-34abf3b7b056").userProcessingResults()
	.summary(UserProcessingResultSummaryParameterSet
		.newBuilder()
		.withStartDateTime(2022-10-01T00:00:00Z)
		.withEndDateTime(2022-10-30T00:00:00Z)
		.build())
	.buildRequest()
	.get();

```