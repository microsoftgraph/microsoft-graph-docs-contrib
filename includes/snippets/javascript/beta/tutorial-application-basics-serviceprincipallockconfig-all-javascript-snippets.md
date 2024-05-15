---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const application = {
    servicePrincipalLockConfiguration: {
        isEnabled: true,
        allProperties: true
    }
};

await client.api('/applications/a0b7f39e-3139-48aa-9397-f46fb63102f7')
	.version('beta')
	.update(application);

```