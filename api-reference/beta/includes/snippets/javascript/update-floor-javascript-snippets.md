---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const place = {
  '@odata.type': 'microsoft.graph.floor',
  isWheelChairAccessible: true,
  sortOrder: 2
};

await client.api('/places/c64205d0-1a2d-4cfe-9012-3f5d668d28ea')
	.version('beta')
	.update(place);

```