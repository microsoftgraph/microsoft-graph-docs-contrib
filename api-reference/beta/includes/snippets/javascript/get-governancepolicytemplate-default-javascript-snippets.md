---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let governancePolicyTemplate = await client.api('/directory/tenantGovernance/governancePolicyTemplates/default')
	.version('beta')
	.get();

```