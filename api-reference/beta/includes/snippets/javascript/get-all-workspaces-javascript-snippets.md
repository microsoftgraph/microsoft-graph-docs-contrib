---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let workspace = await client.api('/places/microsoft.graph.workspace')
	.version('beta')
	.get();

```