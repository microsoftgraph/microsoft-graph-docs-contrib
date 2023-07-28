---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let alerts = await client.api('/identityGovernance/roleManagementAlerts/alerts')
	.version('beta')
	.filter('scopeId eq \'/\' and scopeType eq \'DirectoryRole\'')
	.expand('alertDefinition,alertConfiguration,alertIncidents')
	.get();

```