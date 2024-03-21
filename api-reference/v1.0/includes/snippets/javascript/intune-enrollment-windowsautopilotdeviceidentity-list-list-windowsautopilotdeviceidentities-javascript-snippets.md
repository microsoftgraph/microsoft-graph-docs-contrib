---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let windowsAutopilotDeviceIdentities = await client.api('/deviceManagement/windowsAutopilotDeviceIdentities')
	.get();

```