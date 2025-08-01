---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let mailboxItem = await client.api('/admin/exchange/mailboxes/MBX:e0648f21@aab09c93/folders/AAMkAGVmMDEzM/items/AAMkAGI1AAAoZCfHAAA=')
	.version('beta')
	.get();

```