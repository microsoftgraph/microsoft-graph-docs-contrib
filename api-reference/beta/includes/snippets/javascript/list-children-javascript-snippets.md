---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let children = await client.api('/drives/{drive-id}/items/root/children')
	.version('beta')
	.get();

```