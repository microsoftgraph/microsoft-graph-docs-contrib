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
  label: 'discuss area'
};

await client.api('/places/3e7160bb-75da-4456-ab3c-5ee061f4611a')
	.version('beta')
	.update(place);

```