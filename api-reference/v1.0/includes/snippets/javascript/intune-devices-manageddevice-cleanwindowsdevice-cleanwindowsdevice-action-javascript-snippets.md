---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const cleanWindowsDevice = {
  keepUserData: true
};

await client.api('/deviceManagement/managedDevices/{managedDeviceId}/cleanWindowsDevice')
	.post(cleanWindowsDevice);

```