---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

await client.api('/solutions/backupRestore/restoreSessions/61633878-8321-4950-bfaf-ed285bdd1461/activate')
	.version('beta')
	.post();

```