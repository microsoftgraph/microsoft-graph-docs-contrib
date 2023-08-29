---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let users = await client.api('/deviceManagement/detectedApps/{detectedAppId}/managedDevices/{managedDeviceId}/users')
	.get();

```