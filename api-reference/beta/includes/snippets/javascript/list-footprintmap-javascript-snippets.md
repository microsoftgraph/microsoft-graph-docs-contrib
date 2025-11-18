---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let footprints = await client.api('/places/9748dc5b-3f08-407b-9a8d-f5ed626bf9e8/microsoft.graph.building/map/footprints')
	.version('beta')
	.get();

```