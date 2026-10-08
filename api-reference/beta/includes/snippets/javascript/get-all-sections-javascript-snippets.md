---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let section = await client.api('/places/microsoft.graph.section')
	.version('beta')
	.get();

```