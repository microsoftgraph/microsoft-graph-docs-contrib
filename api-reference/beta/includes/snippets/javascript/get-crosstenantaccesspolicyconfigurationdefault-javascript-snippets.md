---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let crossTenantAccessPolicyConfigurationDefault = await client.api('/policies/crossTenantAccessPolicy/default')
	.version('beta')
	.get();

```