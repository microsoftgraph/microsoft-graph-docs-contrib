---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let cloudPcLaunchInfo = await client.api('/me/cloudPCs/{cloudPCId}/getCloudPcLaunchInfo')
	.version('beta')
	.get();

```