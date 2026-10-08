---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let browseSessions = await client.api('/solutions/backupRestore/browseSessions')
	.version('beta')
	.get();

```