---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Workflow workflow = new Workflow();
workflow.description = "Configure new hire tasks for onboarding employees on their first day";
workflow.displayName = "Australia Onboard new hire employee";
workflow.isEnabled = true;
workflow.isSchedulingEnabled = false;

graphClient.identityGovernance().lifecycleWorkflows().workflows("156ce798-1eb6-4e0a-8515-e79f54d04390")
	.buildRequest()
	.patch(workflow);

```