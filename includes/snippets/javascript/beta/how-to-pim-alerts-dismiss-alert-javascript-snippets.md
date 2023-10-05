---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const unifiedRoleManagementAlert = {
    isActive: false
};

await client.api('/identityGovernance/roleManagementAlerts/alerts/DirectoryRole_3b0e753b-22fa-4c16-9bf2-470b80be80d6_RolesAssignedOutsidePimAlert')
	.version('beta')
	.update(unifiedRoleManagementAlert);

```