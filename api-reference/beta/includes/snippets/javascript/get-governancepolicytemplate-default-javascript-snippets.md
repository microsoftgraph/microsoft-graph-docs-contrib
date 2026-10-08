---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let tenantGovernancePolicyTemplate = await client.api('/directory/tenantGovernance/governancePolicyTemplates/default')
	.version('beta')
	.get();

```