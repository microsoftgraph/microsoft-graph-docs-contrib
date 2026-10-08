---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let reprocessedRuns = await client.api('/identityGovernance/lifecycleWorkflows/deletedItems/workflows/78799042-265a-4e8f-8d61-94a2dcd2d395/executionScope/dad77a47-6eda-4de7-bc37-fe8eb5aaf17d/reprocessedRuns')
	.version('beta')
	.get();

```