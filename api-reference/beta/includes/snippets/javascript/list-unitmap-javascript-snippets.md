---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let units = await client.api('/places/151e85a7-c0b8-4519-997e-1a0858255704/microsoft.graph.building/map/levels/e537d463-475b-43c3-a650-184566c68bc9/units')
	.version('beta')
	.get();

```