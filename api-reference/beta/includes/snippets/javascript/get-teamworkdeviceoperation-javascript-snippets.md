---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let teamworkDeviceOperation = await client.api('/teamwork/devices/0f3ce432-e432-0f3c-32e4-3c0f32e43c0f/operations/eab261f8-61f8-eab2-f861-b2eaf861b2ea')
	.version('beta')
	.get();

```