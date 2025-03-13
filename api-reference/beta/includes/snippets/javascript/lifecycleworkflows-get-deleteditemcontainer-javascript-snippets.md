---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let workflow = await client.api('/identityGovernance/lifecycleWorkflows/deletedItems/workflows/4557805a-1af5-4c29-b271-2cd7fb5de9bf')
	.version('beta')
	.get();

```