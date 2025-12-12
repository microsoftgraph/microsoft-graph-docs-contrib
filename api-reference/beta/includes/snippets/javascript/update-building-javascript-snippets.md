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
  tags: ['most popular building']
};

await client.api('/places/e18a8e21-0494-4296-a5bc-f848dba2740d')
	.version('beta')
	.update(place);

```