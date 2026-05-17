---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let listOperations = await client.api('/places/listOperations')
	.version('beta')
	.get();

```