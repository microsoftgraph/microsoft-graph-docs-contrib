---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const workflow = {
    isEnabled: true,
    isSchedulingEnabled: true
};

await client.api('/identityGovernance/lifecycleWorkflows/workflows/ea71190c-075a-4ae7-9bca-34abf3b7b056')
	.version('beta')
	.update(workflow);

```