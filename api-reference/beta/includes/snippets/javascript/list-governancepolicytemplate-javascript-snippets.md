---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let governancePolicyTemplates = await client.api('/directory/tenantGovernance/governancePolicyTemplates')
	.version('beta')
	.get();

```