---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

await client.api('/me/messages/{id}/permanentDelete')
	.version('beta')
	.post();

```