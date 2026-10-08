---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let m365Capabilities = await client.api('/policies/crossTenantAccessPolicy/partners/af7b70b0-d161-4628-82b4-16190344c029/m365Capabilities')
	.version('beta')
	.get();

```