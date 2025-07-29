---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let driveProtectionUnit = await client.api('/solutions/backupRestore/protectionUnits/microsoft.graph.driveProtectionUnit')
	.get();

```