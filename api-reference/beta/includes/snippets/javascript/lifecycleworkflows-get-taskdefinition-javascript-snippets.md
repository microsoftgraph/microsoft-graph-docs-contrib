---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let taskDefinition = await client.api('/identityGovernance/lifecycleWorkflows/taskDefinitions/1dfdfcc7-52fa-4c2e-bf3a-e3919cc12950')
	.version('beta')
	.get();

```