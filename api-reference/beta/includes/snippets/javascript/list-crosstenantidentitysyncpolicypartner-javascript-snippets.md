---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let partners = await client.api('/policies/crossTenantAccessPolicy/partners')
	.version('beta')
	.expand('identitySynchronization')
	.select('tenantId')
	.get();

```