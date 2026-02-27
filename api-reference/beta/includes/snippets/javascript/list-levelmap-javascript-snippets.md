---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let levels = await client.api('/places/4bff9586-c9ee-401d-9d35-c476231a33e6/microsoft.graph.building/map/levels')
	.version('beta')
	.get();

```