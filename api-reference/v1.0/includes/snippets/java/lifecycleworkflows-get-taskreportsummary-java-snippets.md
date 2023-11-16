---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TaskReportSummary taskReportSummary = graphClient.identityGovernance().lifecycleWorkflows().workflows("14879e66-9ea9-48d0-804d-8fea672d0341").taskReports()
	.summary(TaskReportSummaryParameterSet
		.newBuilder()
		.withStartDateTime(2022-08-19T00:00:00.000Z)
		.withEndDateTime(2022-08-25T00:33:31.533Z)
		.build())
	.buildRequest()
	.get();

```