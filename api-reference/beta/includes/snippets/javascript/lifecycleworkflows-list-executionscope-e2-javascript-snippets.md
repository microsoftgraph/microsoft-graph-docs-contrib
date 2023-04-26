---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let executionScope = await client.api('/identitygovernance/lifecycleWorkflows/workflows/8696088c-1aef-4f65-afe9-acd55343e327/executionScope')
	.version('beta')
	.select('id')
	.get();

```