---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UserSummary userSummary = graphClient.identityGovernance().lifecycleWorkflows().workflows("14879e66-9ea9-48d0-804d-8fea672d0341").userProcessingResults()
	.summary(UserProcessingResultSummaryParameterSet
		.newBuilder()
		.withStartDateTime(2022-07-20T00:00:00Z)
		.withEndDateTime(2022-07-23T00:00:00Z)
		.build())
	.buildRequest()
	.get();

```