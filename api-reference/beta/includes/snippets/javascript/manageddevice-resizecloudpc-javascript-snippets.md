---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const resizeCloudPc = {
  targetServicePlanId: '30d0e128-de93-41dc-89ec-33d84bb662a0'
};

await client.api('/deviceManagement/managedDevices/{managedDeviceId}/resizeCloudPc')
	.version('beta')
	.post(resizeCloudPc);

```