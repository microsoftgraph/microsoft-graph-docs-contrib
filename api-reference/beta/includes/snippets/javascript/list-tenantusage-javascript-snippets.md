---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let tenantUsage = await client.api('/tenantRelationships/managedTenants/tenantUsage')
	.version('beta')
	.get();

```