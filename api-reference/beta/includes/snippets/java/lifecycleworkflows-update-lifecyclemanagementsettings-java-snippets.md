---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LifecycleManagementSettings lifecycleManagementSettings = new LifecycleManagementSettings();
lifecycleManagementSettings.additionalDataManager().put("@odata.context", new JsonPrimitive("https://graph.microsoft.com/beta/$metadata#identityGovernance/lifecycleWorkflows/settings/$entity"));
lifecycleManagementSettings.workflowScheduleIntervalInHours = 3;

graphClient.identityGovernance().lifecycleWorkflows().settings()
	.buildRequest()
	.patch(lifecycleManagementSettings);

```