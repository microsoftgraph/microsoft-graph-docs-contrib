---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let floor = await client.api('/places/microsoft.graph.floor')
	.version('beta')
	.get();

```