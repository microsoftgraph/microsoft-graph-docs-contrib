---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const group = {
  displayName: 'myGroup'
};

await client.api('/termStore/groups')
	.version('beta')
	.post(group);

```