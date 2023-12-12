---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const unifiedRoleManagementAlertConfiguration = {
  '@odata.type':'#microsoft.graph.tooManyGlobalAdminsAssignedToTenantAlertConfiguration',
  isEnabled: 'true',
  globalAdminCountThreshold: 7,
  percentageOfGlobalAdminsOutOfRolesThreshold: 70
};

await client.api('/identityGovernance/roleManagementAlerts/alertConfigurations/DirectoryRole_67b47f38-0f0b-4e62-a3be-859140c2061f_TooManyGlobalAdminsAssignedToTenantAlert')
	.version('beta')
	.update(unifiedRoleManagementAlertConfiguration);

```