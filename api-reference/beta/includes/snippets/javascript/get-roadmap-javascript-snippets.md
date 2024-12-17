---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let roadmap = await client.api('/identity/productChanges/microsoft.graph.roadmap/8370d119-d695-4dd9-bce2-00e893fadf7d')
	.version('beta')
	.get();

```