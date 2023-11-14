---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let platformCredentialMethods = await client.api('/me/authentication/platformCredentialMethods')
	.version('beta')
	.get();

```