---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const place = {
  '@odata.type': 'microsoft.graph.section',
  displayName: 'S1',
  parentId: '46ef7aed-5d94-4fd4-ae03-b333bc7a6955'
};

await client.api('/places')
	.version('beta')
	.post(place);

```