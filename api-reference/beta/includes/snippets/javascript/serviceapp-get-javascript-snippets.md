---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let serviceApp = await client.api('/solutions/backupRestore/serviceApps/71633878-8321-4950-bfaf-ed285bdd1461')
	.version('beta')
	.get();

```