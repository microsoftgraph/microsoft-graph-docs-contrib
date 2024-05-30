---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let crossTenantAccessSettings = await client.api('/networkAccess/settings/crossTenantAccess')
	.version('beta')
	.get();

```