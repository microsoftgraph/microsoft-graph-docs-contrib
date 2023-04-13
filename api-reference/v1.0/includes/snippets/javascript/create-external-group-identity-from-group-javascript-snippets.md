---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const identity = {
  id: '1431b9c38ee647f6a',
  type: 'externalGroup',
};

await client.api('/external/connections/contosohr/groups/31bea3d537902000/members')
	.post(identity);

```