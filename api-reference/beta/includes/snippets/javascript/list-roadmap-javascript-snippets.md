---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let roadmap = await client.api('/identity/productChanges/microsoft.graph.roadmap')
	.version('beta')
	.get();

```