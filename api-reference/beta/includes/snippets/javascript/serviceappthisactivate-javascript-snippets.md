---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const serviceApp = {
    effectiveDateTime: '2024-04-19T12:01:03.45Z'
};

await client.api('/solutions/backupRestore/serviceApps/{71633878-8321-4950-bfaf-ed285bdd1461}/activate')
	.version('beta')
	.post(serviceApp);

```