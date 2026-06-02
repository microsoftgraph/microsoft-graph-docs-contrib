---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let relatedTenants = await client.api('/directory/tenantGovernance/relatedTenants')
	.version('beta')
	.get();

```