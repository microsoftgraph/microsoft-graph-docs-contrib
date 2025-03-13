---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let teamworkDevice = await client.api('/teamwork/devices/0f3ce432-e432-0f3c-32e4-3c0f32e43c0f')
	.version('beta')
	.get();

```