---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let stream = await client.api('/drive/items/{item-id}/content?format={format}')
	.version('beta')
	.get();

```