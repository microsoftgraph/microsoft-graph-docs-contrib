---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

await client.api('/me/cloudPCs/36bd4942-0ca8-11ed-861d-0242ac120002/start')
	.version('beta')
	.post();

```