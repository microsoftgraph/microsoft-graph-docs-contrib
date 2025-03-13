---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let workflowTemplates = await client.api('/identityGovernance/lifecycleWorkflows/workflowTemplates')
	.version('beta')
	.filter('category eq \'leaver\'')
	.get();

```