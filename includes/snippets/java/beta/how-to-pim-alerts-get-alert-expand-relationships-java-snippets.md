---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

UnifiedRoleManagementAlert result = graphClient.identityGovernance().roleManagementAlerts().alerts().byUnifiedRoleManagementAlertId("{unifiedRoleManagementAlert-id}").get(requestConfiguration -> {
	requestConfiguration.queryParameters.expand = new String []{"*"};
});


```