---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const lock = {
  durationMinutes: 30
};

await client.api('/drives/{drive-id}/items/{item-id}/lock')
	.version('beta')
	.post(lock);

```