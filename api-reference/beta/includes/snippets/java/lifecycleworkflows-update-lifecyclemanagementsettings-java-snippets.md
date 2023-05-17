---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LifecycleManagementSettings lifecycleManagementSettings = new LifecycleManagementSettings();
lifecycleManagementSettings.additionalDataManager().put("@odata.context", new JsonPrimitive("https://graph.microsoft.com/beta/$metadata#identityGovernance/lifecycleWorkflows/settings/$entity"));
lifecycleManagementSettings.workflowScheduleIntervalInHours = 3;
EmailSettings emailSettings = new EmailSettings();
emailSettings.senderDomain = "ContosoIndustries.net";
emailSettings.useCompanyBranding = true;
lifecycleManagementSettings.emailSettings = emailSettings;

graphClient.identityGovernance().lifecycleWorkflows().settings()
	.buildRequest()
	.patch(lifecycleManagementSettings);

```