---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

await client.api('/admin/exchange/mailboxes/MBX:e0648f21@aab09c93/folders/recoverableitemsdeletions/items/AAMkADk0MzI?disposalType=hardDelete')
	.version('beta')
	.delete();

```