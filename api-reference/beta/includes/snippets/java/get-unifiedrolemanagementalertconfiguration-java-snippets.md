---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UnifiedRoleManagementAlertConfiguration unifiedRoleManagementAlertConfiguration = graphClient.identityGovernance().roleManagementAlerts().alertConfigurations("DirectoryRole_19356be4-7e93-4ed6-a7c6-0ae28454d125_TooManyGlobalAdminsAssignedToTenantAlert")
	.buildRequest()
	.expand("alertDefinition")
	.get();

```