---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let crossTenantMigrationTask = await client.api('/solutions/migrations/crossTenantMigrationJobs/012ec4f4-df7e-41ae-ba95-6d7ccb8f74a1/users/6a88de8d-7027-44c1-8674-03f826aa1704')
	.version('beta')
	.get();

```