---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

await client.api('/solutions/sharePoint/migrations/crossOrganizationMigrationTasks/3ed6d46d-13a3-4995-b6ea-a74a20b1fac0/cancel')
	.version('beta')
	.post();

```