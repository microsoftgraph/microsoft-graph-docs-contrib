---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let messageTraces = await client.api('/admin/exchange/tracing/messageTraces')
	.get();

```