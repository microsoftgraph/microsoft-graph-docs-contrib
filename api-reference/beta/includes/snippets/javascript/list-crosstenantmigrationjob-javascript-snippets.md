---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let crossTenantMigrationJobs = await client.api('/solutions/migrations/crossTenantMigrationJobs')
	.version('beta')
	.get();

```