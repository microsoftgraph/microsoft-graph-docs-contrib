---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const place = {
  '@odata.type': 'microsoft.graph.desk',
  displayName: 'D1',
  parentId: '1ad0f725-6885-49c5-9a47-3b22a1f9409d'
};

await client.api('/places')
	.version('beta')
	.post(place);

```