---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let crossTenantPartners = await client.api('/policies/deletedItems/crossTenantPartners/')
	.version('beta')
	.get();

```