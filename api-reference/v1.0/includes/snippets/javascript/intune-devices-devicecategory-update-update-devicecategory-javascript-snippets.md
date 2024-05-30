---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const deviceCategory = {
  '@odata.type': '#microsoft.graph.deviceCategory'
};

await client.api('/deviceManagement/detectedApps/{detectedAppId}/managedDevices/{managedDeviceId}/deviceCategory')
	.update(deviceCategory);

```