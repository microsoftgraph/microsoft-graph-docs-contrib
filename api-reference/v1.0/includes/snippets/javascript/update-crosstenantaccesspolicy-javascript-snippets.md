---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const crossTenantAccessPolicy = {
  displayName: 'CrossTenantAccessPolicy',
};

await client.api('/policies/crossTenantAccessPolicy')
	.update(crossTenantAccessPolicy);

```