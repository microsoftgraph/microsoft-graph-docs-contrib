---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let childFolders = await client.api('/admin/exchange/mailboxes/MBX:e0643f21@a7809c93/folders/NJWt2LeVEAAAIBDAAAAA==/childFolders')
	.version('beta')
	.get();

```