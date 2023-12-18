---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UnifiedRoleManagementAlertDefinitionCollectionPage alertDefinitions = graphClient.identityGovernance().roleManagementAlerts().alertDefinitions()
	.buildRequest()
	.filter("scopeId eq '/' and scopeType eq 'DirectoryRole'")
	.get();

```