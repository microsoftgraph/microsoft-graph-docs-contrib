---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let riskyServicePrincipals = await client.api('/identityProtection/riskyServicePrincipals')
	.version('beta')
	.get();

```