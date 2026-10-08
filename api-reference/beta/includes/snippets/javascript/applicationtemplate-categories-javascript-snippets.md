---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let categories = await client.api('/applicationTemplates/microsoft.graph.categories')
	.version('beta')
	.get();

```