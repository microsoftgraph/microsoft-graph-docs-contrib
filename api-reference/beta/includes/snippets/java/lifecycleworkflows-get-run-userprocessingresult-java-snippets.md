---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UserProcessingResult userProcessingResult = graphClient.identityGovernance().lifecycleWorkflows().workflows("15239232-66ed-445b-8292-2f5bbb2eb833").runs("e65e08a0-d68d-41dc-915b-8c4019af5cc2").userProcessingResults("40efc576-840f-47d0-ab95-5abca800f8a2")
	.buildRequest()
	.select("id,failedTasksCount,processingStatus,totalTasksCount,totalUnprocessedTasksCount,subject")
	.get();

```