---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let externalAuthenticationMethods = await client.api('/me/authentication/externalAuthenticationMethods')
	.version('beta')
	.get();

```