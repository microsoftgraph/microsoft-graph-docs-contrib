---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let device = await client.api('/devices/000005c3-b7a6-4c61-89fc-80bf5ccfc366')
	.version('beta')
	.get();

```