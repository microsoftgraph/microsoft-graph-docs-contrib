---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let response = await client.api('/tenantRelationships/managedTenants/riskyUsers/{riskyUserId}')
	.version('beta')
	.get();

```