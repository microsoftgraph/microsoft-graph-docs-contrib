---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let alertConfigurations = await client.api('/identityGovernance/roleManagementAlerts/alertConfigurations')
	.version('beta')
	.filter('scopeId eq \'/\' and scopeType eq \'DirectoryRole\'')
	.expand('alertDefinition')
	.get();

```