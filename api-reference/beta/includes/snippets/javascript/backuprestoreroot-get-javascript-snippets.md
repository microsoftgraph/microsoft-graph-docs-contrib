---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let backupRestoreRoot = await client.api('/solutions/backupRestore')
	.version('beta')
	.get();

```