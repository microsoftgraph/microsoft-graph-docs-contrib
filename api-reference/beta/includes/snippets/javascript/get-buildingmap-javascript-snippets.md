---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let buildingMap = await client.api('/places/30ca79af-ecb7-46c2-a14b-afe264a91543/microsoft.graph.building/map')
	.version('beta')
	.get();

```