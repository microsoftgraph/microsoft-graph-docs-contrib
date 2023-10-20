---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TooManyGlobalAdminsAssignedToTenantAlertConfiguration unifiedRoleManagementAlertConfiguration = new TooManyGlobalAdminsAssignedToTenantAlertConfiguration();
unifiedRoleManagementAlertConfiguration.isEnabled = true;
unifiedRoleManagementAlertConfiguration.globalAdminCountThreshold = 4;
unifiedRoleManagementAlertConfiguration.percentageOfGlobalAdminsOutOfRolesThreshold = 10;

graphClient.identityGovernance().roleManagementAlerts().alertConfigurations("DirectoryRole_3b0e753b-22fa-4c16-9bf2-470b80be80d6_TooManyGlobalAdminsAssignedToTenantAlert")
	.buildRequest()
	.patch(unifiedRoleManagementAlertConfiguration);

```