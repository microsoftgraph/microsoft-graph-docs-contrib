---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let sensorDevices = await client.api('/workplace/sensorDevices')
	.version('beta')
	.get();

```