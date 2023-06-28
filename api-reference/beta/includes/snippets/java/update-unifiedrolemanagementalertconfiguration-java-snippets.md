---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TooManyGlobalAdminsAssignedToTenantAlertConfiguration unifiedRoleManagementAlertConfiguration = new TooManyGlobalAdminsAssignedToTenantAlertConfiguration();
unifiedRoleManagementAlertConfiguration.isEnabled = false;
unifiedRoleManagementAlertConfiguration.globalAdminCountThreshold = 7;
unifiedRoleManagementAlertConfiguration.percentageOfGlobalAdminsOutOfRolesThreshold = 70;

graphClient.identityGovernance().roleManagementAlerts().alertConfigurations("DirectoryRole_67b47f38-0f0b-4e62-a3be-859140c2061f_TooManyGlobalAdminsAssignedToTenantAlert")
	.buildRequest()
	.patch(unifiedRoleManagementAlertConfiguration);

```