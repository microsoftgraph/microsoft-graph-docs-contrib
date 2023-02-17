---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let workflowTemplate = await client.api('/identityGovernance/lifecycleWorkflows/workflowTemplates/77179007-8114-41b5-922e-2e22109df41f')
	.version('beta')
	.get();

```