---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const serviceApp = {
};

await client.api('/solutions/backupRestore/serviceApps')
	.version('beta')
	.post(serviceApp);

```