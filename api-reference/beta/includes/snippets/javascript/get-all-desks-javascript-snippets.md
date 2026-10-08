---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let desk = await client.api('/places/microsoft.graph.desk')
	.version('beta')
	.get();

```