---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let itemActivityStat = await client.api('/drives/{drive-id}/items/{item-id}/analytics/allTime')
	.get();

```