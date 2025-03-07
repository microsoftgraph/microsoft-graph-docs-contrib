---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let cloudPcDeviceImage = await client.api('/deviceManagement/virtualEndpoint/deviceImages/eda7ed64-7705-4079-9d08-c2bd883f4fff')
	.version('beta')
	.get();

```