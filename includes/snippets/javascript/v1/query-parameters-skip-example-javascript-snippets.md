---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let events = await client.api('/me/events')
	.orderby('createdDateTime')
	.skip(20)
	.get();

```