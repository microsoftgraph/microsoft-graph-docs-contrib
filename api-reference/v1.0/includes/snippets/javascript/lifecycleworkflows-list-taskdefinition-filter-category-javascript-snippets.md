---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let taskDefinitions = await client.api('/identityGovernance/lifecycleWorkflows/taskDefinitions')
	.filter('category has \'joiner\'')
	.get();

```