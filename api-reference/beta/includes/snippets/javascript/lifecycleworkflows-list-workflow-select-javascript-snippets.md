---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let workflows = await client.api('/identityGovernance/lifecycleWorkflows/workflows')
	.version('beta')
	.filter('category eq \'leaver\'')
	.select('id,category,displayName,isEnabled,isSchedulingEnabled')
	.get();

```