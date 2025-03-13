---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const permission = {
  type: 'edit',
  scope: 'organization'
};

await client.api('/sites/{siteId}/lists/{listId}/items/{itemId}/createLink')
	.version('beta')
	.post(permission);

```