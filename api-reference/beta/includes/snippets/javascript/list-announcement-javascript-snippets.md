---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let announcement = await client.api('/identity/productChanges/microsoft.graph.announcement')
	.version('beta')
	.get();

```