---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const windowsDefenderScan = {
  quickScan: true
};

await client.api('/deviceManagement/managedDevices/{managedDeviceId}/windowsDefenderScan')
	.post(windowsDefenderScan);

```