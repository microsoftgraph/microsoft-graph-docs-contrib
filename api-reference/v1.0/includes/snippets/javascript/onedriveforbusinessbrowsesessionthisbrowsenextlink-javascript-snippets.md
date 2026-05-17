---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let browse = await client.api('/solutions/backupRestore/oneDriveForBusinessBrowseSessions/m_RtZ8BiiUXOK69cuN6gwubfm9_yeVlDg8s6hci01_cVOAE/browse')
	.skiptoken('nextFetchToken')
	.get();

```