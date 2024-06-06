---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const serviceStatus = {
    appOwnerTenantId: '23014d8c-71fe-4d00-a01a-31850bc5b42a'
};

await client.api('/solutions/backupRestore/enable')
	.version('beta')
	.post(serviceStatus);

```