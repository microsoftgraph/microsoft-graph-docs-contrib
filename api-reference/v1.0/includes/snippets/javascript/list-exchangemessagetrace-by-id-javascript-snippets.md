---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let messageTraces = await client.api('/admin/exchange/tracing/messageTraces')
	.filter('id eq \'a3f6d2c1-5c3b-4f7a-9d1e-2c8f1b0a6e45\'')
	.get();

```