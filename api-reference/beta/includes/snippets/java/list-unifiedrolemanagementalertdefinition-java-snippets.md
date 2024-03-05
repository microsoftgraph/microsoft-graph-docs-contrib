---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

UnifiedRoleManagementAlertDefinitionCollectionResponse result = graphClient.identityGovernance().roleManagementAlerts().alertDefinitions().get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = "scopeId eq '/' and scopeType eq 'DirectoryRole'";
});


```