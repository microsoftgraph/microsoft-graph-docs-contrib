---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let outlookCategory = await client.api('/me/outlook/masterCategories/feafe4e8-52ff-488a-817f-cfea7e43ff8b')
	.get();

```