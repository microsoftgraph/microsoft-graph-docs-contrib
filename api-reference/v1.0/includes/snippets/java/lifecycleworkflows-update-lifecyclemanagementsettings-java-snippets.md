---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.models.identitygovernance.LifecycleManagementSettings lifecycleManagementSettings = new com.microsoft.graph.models.identitygovernance.LifecycleManagementSettings();
lifecycleManagementSettings.setWorkflowScheduleIntervalInHours(3);
EmailSettings emailSettings = new EmailSettings();
emailSettings.setSenderDomain("ContosoIndustries.net");
emailSettings.setUseCompanyBranding(true);
lifecycleManagementSettings.setEmailSettings(emailSettings);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("@odata.context", "https://graph.microsoft.com/v1.0/$metadata#identityGovernance/lifecycleWorkflows/settings/$entity");
lifecycleManagementSettings.setAdditionalData(additionalData);
com.microsoft.graph.models.identitygovernance.LifecycleManagementSettings result = graphClient.identityGovernance().lifecycleWorkflows().settings().patch(lifecycleManagementSettings);


```