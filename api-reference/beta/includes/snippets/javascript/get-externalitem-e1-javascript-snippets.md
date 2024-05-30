---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let externalItem = await client.api('/external/connections/contosohr/items/TSP228082938')
	.version('beta')
	.get();

```