---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let workflow = await client.api('/identityGovernance/lifecycleWorkflows/deletedItems/workflows/952b23c5-cc25-48c9-8848-95da4dd9dc6d')
	.version('beta')
	.select('id,category,displayName,description,version,executionConditions')
	.get();

```