---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let topTasksProcessedSummary = await client.api('/identityGovernance/lifecycleWorkflows/insights/topTasksProcessedSummary(startDateTime=2023-01-01T00:00:00Z,endDateTime=2023-01-31T00:00:00Z)')
	.version('beta')
	.get();

```