---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

TooManyGlobalAdminsAssignedToTenantAlertConfiguration unifiedRoleManagementAlertConfiguration = new TooManyGlobalAdminsAssignedToTenantAlertConfiguration();
unifiedRoleManagementAlertConfiguration.setOdataType("#microsoft.graph.tooManyGlobalAdminsAssignedToTenantAlertConfiguration");
unifiedRoleManagementAlertConfiguration.setIsEnabled(true);
unifiedRoleManagementAlertConfiguration.setGlobalAdminCountThreshold(7);
unifiedRoleManagementAlertConfiguration.setPercentageOfGlobalAdminsOutOfRolesThreshold(70);
UnifiedRoleManagementAlertConfiguration result = graphClient.identityGovernance().roleManagementAlerts().alertConfigurations().byUnifiedRoleManagementAlertConfigurationId("{unifiedRoleManagementAlertConfiguration-id}").patch(unifiedRoleManagementAlertConfiguration);


```