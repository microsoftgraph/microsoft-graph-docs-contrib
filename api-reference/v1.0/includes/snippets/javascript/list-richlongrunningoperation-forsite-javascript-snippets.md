---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let list = await client.api('/sites/root/lists/Documents')
	.get();

```