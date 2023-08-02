---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

WorkflowVersion workflowVersion = graphClient.identityGovernance().lifecycleWorkflows().workflows("15239232-66ed-445b-8292-2f5bbb2eb833").versions("2")
	.buildRequest()
	.expand("tasks")
	.select("category,displayName,versionNumber,executionConditions")
	.get();

```