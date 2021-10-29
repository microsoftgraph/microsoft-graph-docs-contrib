---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const identity = {
  id: 'e5477431-1038-484e-bf69-1dfedb97a110',
  type: 'group'
};

await client.api('/external/connections/contosohr/groups/31bea3d537902000/members')
	.post(identity);

```