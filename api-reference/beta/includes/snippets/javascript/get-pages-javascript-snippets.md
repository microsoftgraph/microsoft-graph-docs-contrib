---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let sitePage = await client.api('/sites/{site-id}/pages/microsoft.graph.sitePage')
	.version('beta')
	.get();

```