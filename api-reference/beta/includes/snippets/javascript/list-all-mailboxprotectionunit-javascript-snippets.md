---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let mailboxProtectionUnit = await client.api('/solutions/backupRestore/protectionUnits/microsoft.graph.mailboxProtectionUnit')
	.version('beta')
	.get();

```