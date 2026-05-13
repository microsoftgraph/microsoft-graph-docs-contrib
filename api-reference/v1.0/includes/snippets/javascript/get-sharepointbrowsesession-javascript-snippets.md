---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let sharePointBrowseSession = await client.api('/solutions/backupRestore/sharePointBrowseSessions/{sharePointBrowseSessionId}')
	.get();

```