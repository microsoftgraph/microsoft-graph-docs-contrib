---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let managedDevice = await client.api('/deviceManagement/managedDevices/{managedDeviceId}')
	.get();

```