---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UnifiedRoleManagementAlertConfigurationCollectionPage alertConfigurations = graphClient.identityGovernance().roleManagementAlerts().alertConfigurations()
	.buildRequest()
	.filter("scopeId eq '/' and scopeType eq 'DirectoryRole'")
	.expand("alertDefinition")
	.get();

```