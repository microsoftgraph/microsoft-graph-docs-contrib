---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let productChanges = await client.api('/identity/productChanges')
	.version('beta')
	.get();

```