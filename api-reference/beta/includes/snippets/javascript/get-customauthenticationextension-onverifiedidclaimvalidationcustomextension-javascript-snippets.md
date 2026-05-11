---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let customAuthenticationExtension = await client.api('/identity/customAuthenticationExtensions/6a0a3429-be77-0aed-951e-1c8aed62bf8a')
	.version('beta')
	.get();

```