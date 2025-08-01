---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let delta = await client.api('/admin/exchange/mailboxes/MBX:e0643f21@a7809c93/folders/delta')
	.version('beta')
	.header('Prefer','odata.maxpagesize=2')
	.get();

```