---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let alertDefinitions = await client.api('/identityGovernance/roleManagementAlerts/alertDefinitions')
	.version('beta')
	.filter('scopeId eq \'/\' and scopeType eq \'DirectoryRole\'')
	.get();

```