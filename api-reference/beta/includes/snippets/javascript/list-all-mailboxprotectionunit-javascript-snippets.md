---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let mailboxProtectionUnits = await client.api('/solutions/backupRestore/mailboxProtectionUnits')
	.version('beta')
	.get();

```