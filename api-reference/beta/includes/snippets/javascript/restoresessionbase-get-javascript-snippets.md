---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let restoreSessionBase = await client.api('/solutions/backupRestore/restoreSessions/959ba739-70b5-43c4-8c90-b2c22014f18b')
	.version('beta')
	.get();

```