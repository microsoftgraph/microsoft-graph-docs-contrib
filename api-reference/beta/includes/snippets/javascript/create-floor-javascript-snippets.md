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
  displayName: 'F1',
  parentId: '767a31a7-6987-41c9-b829-ab351b8aab53'
};

await client.api('/places')
	.version('beta')
	.post(place);

```