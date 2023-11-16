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

await client.api('/identityGovernance/roleManagementAlerts/alerts/DirectoryRole_67b47f38-0f0b-4e62-a3be-859140c2061f_StaleSignInAlert')
	.version('beta')
	.update(unifiedRoleManagementAlert);

```