---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

await client.api('/policies/deletedItems/crossTenantPartners/01d0e717-bc90-46ba-94a9-71b4a811fddb/restore')
	.version('beta')
	.post();

```