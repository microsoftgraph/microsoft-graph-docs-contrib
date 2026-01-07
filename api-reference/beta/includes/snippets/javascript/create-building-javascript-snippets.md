---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const place = {
  '@odata.type': 'microsoft.graph.building',
  displayName: 'B001'
};

await client.api('/places')
	.version('beta')
	.post(place);

```