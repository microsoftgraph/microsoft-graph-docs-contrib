---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

await client.api('/directory/tenantGovernance/relatedTenants/refresh')
	.version('beta')
	.post();

```