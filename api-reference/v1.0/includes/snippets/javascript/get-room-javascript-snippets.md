---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let place = await client.api('/places/979e9793-3e91-40eb-b18c-0ea937893956')
	.get();

```