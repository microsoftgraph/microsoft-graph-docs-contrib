---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

await client.api('/deviceManagement/virtualEndpoint/cloudPcPools/a1b2c3d4-e5f6-7890-abcd-ef1234567890')
	.version('beta')
	.delete();

```