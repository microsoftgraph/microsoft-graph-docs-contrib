---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let workflowVersion = await client.api('/identityGovernance/lifecycleWorkflows/workflows/15239232-66ed-445b-8292-2f5bbb2eb833/versions/2')
	.expand('tasks')
	.select('category,displayName,versionNumber,executionConditions')
	.get();

```