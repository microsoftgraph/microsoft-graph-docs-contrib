---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let workflows = await client.api('/identityGovernance/lifecycleWorkflows/deletedItems/workflows')
	.version('beta')
	.get();

```