---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

await client.api('/drives/{drive-id}/items/{item-id}/discardCheckout')
	.version('beta')
	.post();

```