---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let identityProviders = await client.api('/identity/identityProviders')
	.version('beta')
	.get();

```