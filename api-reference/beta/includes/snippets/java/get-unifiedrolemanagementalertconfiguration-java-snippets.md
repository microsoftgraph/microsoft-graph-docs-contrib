---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

UnifiedRoleManagementAlertConfiguration result = graphClient.identityGovernance().roleManagementAlerts().alertConfigurations().byUnifiedRoleManagementAlertConfigurationId("{unifiedRoleManagementAlertConfiguration-id}").get(requestConfiguration -> {
	requestConfiguration.queryParameters.expand = new String []{"alertDefinition"};
});


```