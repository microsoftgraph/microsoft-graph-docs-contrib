---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const place = {
  '@odata.type': 'microsoft.graph.workspace',
  parentId: 'f7de7265-e420-47b4-9d49-28d728716241',
  displayName: 'testSpace001',
  tags: ['test']
};

await client.api('/places')
	.version('beta')
	.post(place);

```