---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let cloudPcPoolAssignment = await client.api('/deviceManagement/virtualEndpoint/cloudPcPools/a1b2c3d4-e5f6-7890-abcd-ef1234567890/assignments/b2c3d4e5-f6a7-8901-bcde-f23456789012')
	.version('beta')
	.get();

```