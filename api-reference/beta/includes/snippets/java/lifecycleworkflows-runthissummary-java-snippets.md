---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

RunSummary runSummary = graphClient.identityGovernance().lifecycleWorkflows().workflows("14879e66-9ea9-48d0-804d-8fea672d0341").runs()
	.summary(RunSummaryParameterSet
		.newBuilder()
		.withStartDateTime(2022-08-01T00:00:00Z)
		.withEndDateTime(2022-08-31T00:00:00Z)
		.build())
	.buildRequest()
	.get();

```