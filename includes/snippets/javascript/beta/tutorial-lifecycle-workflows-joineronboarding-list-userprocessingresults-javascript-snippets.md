---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let userProcessingResults = await client.api('/identityGovernance/LifecycleWorkflows/workflows/ea71190c-075a-4ae7-9bca-34abf3b7b056/userProcessingResults')
	.version('beta')
	.get();

```