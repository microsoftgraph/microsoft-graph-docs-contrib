---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const synchronizationSchema = {
    directories: [..],
    synchronizationRules: [..]
};

await client.api('/servicePrincipals/{servicePrincipalId}/synchronization/jobs/{jobId}/schema')
	.version('beta')
	.put(synchronizationSchema);

```