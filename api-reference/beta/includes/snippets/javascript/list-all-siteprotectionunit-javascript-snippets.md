---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let siteProtectionUnit = await client.api('/solutions/backupRestore/protectionUnits/microsoft.graph.siteProtectionUnit')
	.version('beta')
	.get();

```