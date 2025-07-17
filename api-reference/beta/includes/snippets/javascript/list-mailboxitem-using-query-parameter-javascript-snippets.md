---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let items = await client.api('/admin/exchange/mailboxes/MBX:e0643f21@a7809c93/folders/Inbox/items')
	.version('beta')
	.filter('createdDateTime ge 2021-08-21 and createdDateTime lt 2021-09-16')
	.select('type,size')
	.top(1)
	.get();

```