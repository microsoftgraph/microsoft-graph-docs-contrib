---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let oneDriveForBusinessBrowseSessions = await client.api('/solutions/backupRestore/oneDriveForBusinessBrowseSessions')
	.get();

```