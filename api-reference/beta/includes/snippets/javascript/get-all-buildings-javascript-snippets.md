---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let building = await client.api('/places/microsoft.graph.building')
	.version('beta')
	.get();

```