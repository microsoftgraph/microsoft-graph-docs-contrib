---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Run run = graphClient.identityGovernance().lifecycleWorkflows().workflows("15239232-66ed-445b-8292-2f5bbb2eb833").runs("e65e08a0-d68d-41dc-915b-8c4019af5cc2")
	.buildRequest()
	.select("id,failedTasksCount,failedUsersCount,processingStatus,totalTasksCount,totalUnprocessedTasksCount,totalUsersCount")
	.get();

```