---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let teamworkDeviceConfiguration = await client.api('/teamwork/devices/e19229ed-29ed-e192-ed29-92e1ed2992e1/configuration')
	.version('beta')
	.get();

```