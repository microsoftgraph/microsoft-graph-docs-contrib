---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const lifecycleManagementSettings = {
    '@odata.context': 'https://graph.microsoft.com/beta/$metadata#identityGovernance/lifecycleWorkflows/settings/$entity',
    workflowScheduleIntervalInHours: 3
};

await client.api('/identityGovernance/lifecycleWorkflows/settings')
	.version('beta')
	.update(lifecycleManagementSettings);

```