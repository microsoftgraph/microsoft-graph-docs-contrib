---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TaskReportCollectionPage taskReports = graphClient.identityGovernance().lifecycleWorkflows().workflows("15239232-66ed-445b-8292-2f5bbb2eb833").taskReports()
	.buildRequest()
	.select("id,failedUsersCount,processingStatus,successfulUsersCount,totalUsersCount,unprocessedUsersCount,taskDefinition,taskProcessingResults")
	.get();

```