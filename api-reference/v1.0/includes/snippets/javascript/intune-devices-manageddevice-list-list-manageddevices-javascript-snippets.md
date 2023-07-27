---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let managedDevices = await client.api('/deviceManagement/managedDevices')
	.get();

```