---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let userProcessingResults = await client.api('/identityGovernance/LifecycleWorkflows/workflows/368dfba3-2303-4e02-b258-87d742187e1b/userProcessingResults')
	.version('beta')
	.get();

```