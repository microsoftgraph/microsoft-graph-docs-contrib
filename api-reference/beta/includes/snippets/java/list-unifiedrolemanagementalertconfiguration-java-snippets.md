---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

UnifiedRoleManagementAlertConfigurationCollectionResponse result = graphClient.identityGovernance().roleManagementAlerts().alertConfigurations().get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = "scopeId eq '/' and scopeType eq 'DirectoryRole'";
	requestConfiguration.queryParameters.expand = new String []{"alertDefinition"};
});


```