---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const refresh = {
    scopeId: '/',
    scopeType: 'DirectoryRole'
};

await client.api('/identityGovernance/roleManagementAlerts/alerts/refresh')
	.version('beta')
	.post(refresh);

```