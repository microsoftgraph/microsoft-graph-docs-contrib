---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let conditionalAccessPolicy = await client.api('/identity/conditionalAccess/policies/10ef4fe6-5e51-4f5e-b5a2-8fed19d0be67')
	.version('beta')
	.get();

```