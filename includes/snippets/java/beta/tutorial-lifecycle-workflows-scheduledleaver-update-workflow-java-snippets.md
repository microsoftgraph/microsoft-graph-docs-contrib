---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Workflow workflow = new Workflow();
workflow.isEnabled = true;
workflow.isSchedulingEnabled = true;

graphClient.identityGovernance().lifecycleWorkflows().workflows("15239232-66ed-445b-8292-2f5bbb2eb833")
	.buildRequest()
	.patch(workflow);

```