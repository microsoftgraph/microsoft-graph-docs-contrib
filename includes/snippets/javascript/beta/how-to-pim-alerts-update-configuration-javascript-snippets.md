---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const unifiedRoleManagementAlertConfiguration = {
    '@odata.type': '#microsoft.graph.tooManyGlobalAdminsAssignedToTenantAlertConfiguration',
    isEnabled: true,
    globalAdminCountThreshold: 4,
    percentageOfGlobalAdminsOutOfRolesThreshold: 10
};

await client.api('/identityGovernance/roleManagementAlerts/alertConfigurations/DirectoryRole_3b0e753b-22fa-4c16-9bf2-470b80be80d6_TooManyGlobalAdminsAssignedToTenantAlert')
	.version('beta')
	.update(unifiedRoleManagementAlertConfiguration);

```