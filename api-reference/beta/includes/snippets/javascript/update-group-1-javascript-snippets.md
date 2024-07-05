---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const group = {
   description: 'Contoso Life v2.0',
   displayName: 'Contoso Life Renewed'
};

await client.api('/groups/0d09007d-45b2-458c-b180-880dde3a302e')
	.version('beta')
	.update(group);

```