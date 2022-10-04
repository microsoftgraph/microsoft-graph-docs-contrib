---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

await client.api('/identityGovernance/lifecycleWorkflows/deletedItems/workflows/4c9c57b9-e1e9-4bed-a936-4fad9d8f5638/restore')
	.version('beta')
	.post();

```