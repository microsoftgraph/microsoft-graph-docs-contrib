---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let windowsProtectionState = await client.api('/deviceManagement/detectedApps/{detectedAppId}/managedDevices/{managedDeviceId}/windowsProtectionState')
	.get();

```