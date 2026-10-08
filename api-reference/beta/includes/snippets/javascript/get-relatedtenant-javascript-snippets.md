---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let relatedTenant = await client.api('/directory/tenantGovernance/relatedTenants/{relatedTenantId}')
	.version('beta')
	.get();

```