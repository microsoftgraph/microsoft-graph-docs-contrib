---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let teamworkDeviceHealth = await client.api('/teamwork/devices/d8214fe3-4fe3-d821-e34f-21d8e34f21d8/health')
	.version('beta')
	.get();

```