---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let driveProtectionUnits = await client.api('/solutions/backupRestore/driveProtectionUnits')
	.version('beta')
	.get();

```