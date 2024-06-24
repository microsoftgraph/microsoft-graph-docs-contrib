---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let siteProtectionUnits = await client.api('/solutions/backupRestore/siteProtectionUnits')
	.version('beta')
	.get();

```