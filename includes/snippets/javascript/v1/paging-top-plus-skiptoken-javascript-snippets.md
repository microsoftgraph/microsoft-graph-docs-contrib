---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let users = await client.api('/users')
	.skiptoken('skiptoken=RFNwdAIAAQAAAD8...AAAAAAAA')
	.top(5)
	.get();

```