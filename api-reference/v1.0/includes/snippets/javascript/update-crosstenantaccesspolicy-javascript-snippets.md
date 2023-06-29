---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const crossTenantAccessPolicy = {
  allowedCloudEndpoints: ['microsoftonline.us']
};

await client.api('/policies/crossTenantAccessPolicy')
	.update(crossTenantAccessPolicy);

```