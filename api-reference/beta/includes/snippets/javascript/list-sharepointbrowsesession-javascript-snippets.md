---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let sharePointBrowseSessions = await client.api('/solutions/backupRestore/sharePointBrowseSessions')
	.version('beta')
	.get();

```