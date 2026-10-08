---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let m365Capabilities = await client.api('/policies/crossTenantAccessPolicy/default/m365Capabilities')
	.version('beta')
	.get();

```