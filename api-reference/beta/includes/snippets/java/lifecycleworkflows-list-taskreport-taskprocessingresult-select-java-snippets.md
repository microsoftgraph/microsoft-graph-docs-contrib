---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TaskProcessingResultCollectionPage taskProcessingResults = graphClient.identityGovernance().lifecycleWorkflows().workflows("15239232-66ed-445b-8292-2f5bbb2eb833").taskReports("443c7611-45df-48c0-bf5e-dc6068c402f0").taskProcessingResults()
	.buildRequest()
	.select("id,failureReason,processingStatus,subject,task")
	.get();

```