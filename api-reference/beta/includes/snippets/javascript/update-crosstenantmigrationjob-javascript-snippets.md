---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const crossTenantMigrationJob = {
  completeAfterDateTime: '2025-05-22T17:14:52Z'
};

await client.api('/solutions/migrations/crossTenantMigrationJobs/add14989-2b21-4001-81bd-a18b0bac1dea')
	.version('beta')
	.update(crossTenantMigrationJob);

```