---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let identityProviderBase = await client.api('/identity/identityProviders/12345678-abcd-1234-cdef-aaaaaaaaaaaa')
	.version('beta')
	.get();

```