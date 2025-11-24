---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let crossTenantSyncPolicyPartners = await client.api('/policies/deletedItems/crossTenantSyncPolicyPartners/')
	.version('beta')
	.get();

```