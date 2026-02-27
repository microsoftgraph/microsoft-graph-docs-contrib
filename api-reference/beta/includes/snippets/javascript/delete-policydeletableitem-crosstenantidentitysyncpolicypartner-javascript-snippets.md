---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

await client.api('/policies/deletedItems/crossTenantSyncPolicyPartners/809cbbd2-2325-4c17-bd51-f8f098db19c8')
	.version('beta')
	.delete();

```