---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let restoreSessions = await client.api('/solutions/backupRestore/restoreSessions')
	.version('beta')
	.get();

```